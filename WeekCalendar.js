import React, { useState } from 'react';
import './WeekCalendar.css';

const hours = [...Array(12).keys()].map(hour => `${hour + 1}:00 AM`).concat([...Array(12).keys()].map(hour => `${hour + 1}:00 PM`));

const days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];

function WeekCalendar() {
  const [clicked, setClicked] = useState({});

  const [isDragging, setIsDragging] = useState(false);

  const generateKey = (dayIndex, hourIndex) => `${dayIndex}-${hourIndex}`;

  const handleMouseDown = (dayIndex, hourIndex) => {
    setIsDragging(true);
    toggleSelection(dayIndex, hourIndex);
  };

  const handleMouseEnter = (dayIndex, hourIndex) => {
    if (!isDragging) return;
    toggleSelection(dayIndex, hourIndex);
  };

  const handleMouseUp = () => {
    setIsDragging(false);
  };

  const toggleSelection = (dayIndex, hourIndex) => {
    const key = generateKey(dayIndex, hourIndex);
    const updatedClicked = { ...clicked, [key]: !clicked[key] };
    setClicked(updatedClicked);
  };

  const generateSelectionArray = () => {
    const selectionArray = days.map((_, dayIndex) => 
      hours.map((_, hourIndex) => clicked[generateKey(dayIndex, hourIndex)] ? 1 : 0)
    );
    return selectionArray;
  };

  const handleConfirm = () => {
    const selectionArray = generateSelectionArray();
    const json = JSON.stringify(selectionArray);
    const blob = new Blob([json], { type: 'application/json' });
    const url = URL.createObjectURL(blob);
    const link = document.createElement('a');
    link.href = url;
    link.download = 'selection.json';
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
  };

  return (
    <div className="week-calendar" onMouseLeave={handleMouseUp}>
      <div className="time-column">
        <div className="hour-label"></div>
        {hours.map(hour => (
          <div key={hour} className="hour">{hour}</div>
        ))}
      </div>
      {days.map((day, dayIndex) => (
        <div key={day} className="day-column">
          <div className="day-label">{day}</div>
          {hours.map((hour, hourIndex) => (
            <div 
              key={hour} 
              className={`hour-marker ${clicked[generateKey(dayIndex, hourIndex)] ? 'clicked' : ''}`} 
              onMouseDown={() => handleMouseDown(dayIndex, hourIndex)}
              onMouseEnter={() => handleMouseEnter(dayIndex, hourIndex)}
              onMouseUp={handleMouseUp}
            ></div>
          ))}
        </div>
      ))}
      <button onClick={handleConfirm} className="confirm-button">Confirm</button>
    </div>
  );
}

export default WeekCalendar;
