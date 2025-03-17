@model Student

<h2>Add New Student</h2>

<form asp-action="Create" method="post">
    <div class="form-group">
        <label for="Name">Name</label>
        <input asp-for="Name" class="form-control" required />
    </div>
    <button type="submit" class="btn btn-primary">Save</button>
</form>

<a asp-action="Index" class="btn btn-secondary">Back</a>
