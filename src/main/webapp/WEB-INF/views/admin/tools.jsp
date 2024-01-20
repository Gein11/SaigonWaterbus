    <div class="container mt-5" style="width: 98%;">
        <div class="row">
            <div class="col-12">
                <h2 class="mb-4">Ticket Management</h2>
                <div class="mb-3 d-flex">
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addTicketModal">
                        <i class="fas fa-plus me-2"></i> Add Ticket
                    </button>
                    
                    <div class="input-group w-75">
                        <input type="text" class="form-control" placeholder="Find Ticket">
                        <button style="width: 50px" class="btn btn-primary" type="button" data-bs-toggle="modal" data-bs-target="#findTicketModal">
                            Find
                        </button>
                    </div>
                </div>
                
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Ticket Description</th>
                            <th scope="col">Time</th>
                            <th scope="col">Date</th>
                            <th scope="col">Destination</th>
                            <th scope="col">Origin</th>
                            <th scope="col">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Ticket 1 Description</td>
                            <td>12:00 PM</td>
                            <td>2024-01-15</td>
                            <td>Destination 1</td>
                            <td>Origin 1</td>
                            <td>
                                <button type="button" class="btn btn-warning btn-sm mx-1" data-bs-toggle="modal" data-bs-target="#editTicketModal">
                                    <i class="fas fa-edit"></i> Edit
                                </button>
                                <button type="button" class="btn btn-danger btn-sm mx-1">
                                    <i class="fas fa-trash"></i> Delete
                                </button>
                            </td>
                        </tr>
                        <!-- Add more rows as needed -->
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <div class="modal fade" id="addTicketModal" tabindex="-1" aria-labelledby="addTicketModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addTicketModalLabel">Add Ticket</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="mb-3">
                            <label for="editTicketDescription" class="form-label">Ticket Description</label>
                            <textarea class="form-control" id="editTicketDescription" rows="3"></textarea>
                        </div>
                        <div class="mb-3">
                            <label for="editTicketTime" class="form-label">Time</label>
                            <input type="time" class="form-control" id="editTicketTime" rows="3"></input>
                        </div>
                        <div class="mb-3">
                            <label for="editTicketDate" class="form-label">Date</label>
                            <input type="date" class="form-control" id="editTicketDate" rows="3"></input>
                        </div>
                        <div class="mb-3">
                            <label for="editDestination" class="form-label"> Destination</label>
                            <input type="text" class="form-control" id="editDestination" rows="3"></input>
                        </div>
                       
                        <div class="mb-3">
                            <label for="editOrigin" class="form-label">Origin</label>
                            <input type="text" class="form-control" id="editOrigin" rows="3"></input>
                        </div>
                        <button type="button" class="btn btn-primary w-100" >Add Ticket</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

<!-- Edit Ticket Modal -->
<div class="modal fade" id="editTicketModal" tabindex="-1" aria-labelledby="editTicketModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editTicketModalLabel">Edit Ticket</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="mb-3">
                        <label for="editTicketDescription" class="form-label">Ticket Description</label>
                        <textarea class="form-control" id="editTicketDescription" rows="3"></textarea>
                    </div>
                    <div class="mb-3">
                        <label for="editTicketTime" class="form-label">Time</label>
                        <input type="time" class="form-control" id="editTicketTime" rows="3"></input>
                    </div>
                    <div class="mb-3">
                        <label for="editTicketDate" class="form-label">Date</label>
                        <input type="date" class="form-control" id="editTicketDate" rows="3"></input>
                    </div>
                    <div class="mb-3">
                        <label for="editDestination" class="form-label">Destination</label>
                        <input type="text" class="form-control" id="editDestination" rows="3"></input>
                    </div>
                    <div class="mb-3">
                        <label for="editOrigin" class="form-label">Origin</label>
                        <input type="text" class="form-control" id="editOrigin" rows="3"></input>
                    </div>
                    <button type="button" class="btn btn-primary w-100" onclick="updateTicket()">Save Changes</button>
                </form>
            </div>
        </div>
    </div>
</div>

