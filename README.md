# Vendor Locations Heatmap

A dynamic heatmap application that displays vendor locations from JSON data on an interactive Google Map.

## Features

- **Interactive Heatmap**: Visual representation of vendor density using Google Maps Heatmap Layer
- **Individual Markers**: Clickable markers for each vendor with detailed information
- **Real-time Data**: Fetches data from local JSON file or API endpoint
- **Statistics Panel**: Shows vendor count and distribution by location
- **Responsive Design**: Works on desktop and mobile devices
- **Auto-refresh**: Updates data every 5 minutes automatically

## Data Structure

The application expects vendor data in the following format:

```json
{
  "success": true,
  "message": "Vendors data fetched successfully",
  "data": [
    {
      "id": 3,
      "name": "Vendor Name",
      "phone": "Phone Number",
      "email": "email@example.com",
      "addresses": [
        {
          "id": 3,
          "title": "Address Title",
          "address_1": "Primary Address",
          "address_2": "Secondary Address",
          "lat": 24.7799955,
          "lng": 46.79176424
        }
      ]
    }
  ]
}
```

## Usage

1. **Local Development**: 
   - Place your `response.json` file in the same directory as `index.html`
   - Open `index.html` in a web browser
   - The application will automatically load data from the local JSON file

2. **API Integration**:
   - The application will fall back to the API endpoint if local file is not available
   - Update the API URL in the code if needed

3. **Customization**:
   - Modify the Google Maps API key in the script tag
   - Adjust heatmap radius and opacity in the `updateMap` function
   - Customize the styling in the CSS section

## Map Features

- **Heatmap Layer**: Shows vendor density with color-coded intensity
- **Info Windows**: Click on markers to see vendor details
- **Auto-fit**: Map automatically adjusts to show all vendors
- **Statistics**: Real-time count and location-based statistics

## Technical Details

- **Google Maps API**: Uses Google Maps JavaScript API with Heatmap Layer
- **Data Filtering**: Automatically filters out vendors without valid coordinates
- **Error Handling**: Graceful fallback between local and API data sources
- **Performance**: Efficient marker management and heatmap rendering

## Browser Compatibility

- Chrome (recommended)
- Firefox
- Safari
- Edge

## Setup Requirements

- Google Maps API key (included in the code)
- Web server (for local development, you can use Python's `http.server` or Node.js `http-server`)
- Modern web browser with JavaScript enabled

## Running Locally

```bash
# Using Python 3
python -m http.server 8000

# Using Node.js (if you have http-server installed)
npx http-server

# Then open http://localhost:8000 in your browser
```

## Data Sources

The application supports two data sources:
1. **Local JSON file** (`response.json`) - Primary source
2. **API endpoint** - Fallback source if local file is unavailable

The application will automatically detect and use the available data source.
