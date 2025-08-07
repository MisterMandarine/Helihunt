// Get the unit's health
private _unit = player; // You can change this to any unit variable, like a specific soldier
private _health = damage _unit; // This gives you a value between 0 (healthy) and 1 (dead)

// Calculate the health in percentage (0 to 100)
private _healthPercentage = (1 - _health) * 100;

// Create a hint message
private _hintMessage = format ["Your current health is: %1%%", _healthPercentage];

// Show the hint to the player
hint _hintMessage;
