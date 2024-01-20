        <h1 class="text-center mb-4">Add Ticket</h1>
        <form style="width: 600px">
            <div class="mb-3">
                <label for="editTicketDescription" class="form-label">Ticket Description</label>
                <textarea class="form-control" id="editTicketDescription" rows="3"></textarea>
            </div>
            <div class="mb-3">
                <label for="editTicketTime" class="form-label">Time</label>
                <input type="time" class="form-control" id="editTicketTime">
            </div>
            <div class="mb-3">
                <label for="editTicketDate" class="form-label">Date</label>
                <input type="date" class="form-control" id="editTicketDate">
            </div>
            <div class="mb-3">
                <label for="editDestination" class="form-label">Destination</label>
                <input type="text" class="form-control" id="editDestination">
            </div>
            <div class="mb-3">
                <label for="editOrigin" class="form-label">Origin</label>
                <input type="text" class="form-control" id="editOrigin">
            </div>
            <div class="text-center">
                <button type="button" class="btn btn-primary">Add Ticket</button>
            </div>
        </form>

  <div class="container mt-1">

        <!-- Table for ticket details -->
        <div class="mt-1">
            <h2>Ticket Details</h2>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Description</th>
                        <th scope="col">Time</th>
                        <th scope="col">Date</th>
                        <th scope="col">Destination</th>
                        <th scope="col">Origin</th>
                         <th scope="col">Edit</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <!-- Replace the dummy data below with actual ticket details -->
                    <tr>
                        <td>Sample Description</td>
                        <td>12:00 PM</td>
                        <td>2024-01-16</td>
                        <td>Sample Destination</td>
                        <td>Sample Origin</td>
                        <td><a href="#">Edit</a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

