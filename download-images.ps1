# PowerShell script to download sample images for EcoRevive project

# Create img directory if it doesn't exist
if (-not (Test-Path -Path "img")) {
    New-Item -ItemType Directory -Path "img"
}

# List of images to download with their URLs and filenames
$images = @(
    @{
        url = "https://images.unsplash.com/photo-1567095761054-7a02e69e5c43?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80"
        filename = "img/recycling-symbol.jpg"
        description = "Recycling Symbol (Hero image)"
    },
    @{
        url = "https://images.unsplash.com/photo-1589819482236-16c4a97de31b?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
        filename = "img/charity-jar.jpg"
        description = "Charity Donation Jar"
    },
    @{
        url = "https://images.unsplash.com/photo-1587840171670-8b850147754e?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
        filename = "img/community-hands.jpg"
        description = "Community Hands Together"
    },
    @{
        url = "https://images.unsplash.com/photo-1593113630400-ea4288922497?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
        filename = "img/food-donation.jpg"
        description = "Food Distribution"
    },
    @{
        url = "https://images.unsplash.com/photo-1561016444-14f747499547?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
        filename = "img/scrap-metal.jpg"
        description = "Scrap Metal Pile"
    },
    @{
        url = "https://images.unsplash.com/photo-1532996122724-e3c354a0b15b?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
        filename = "img/recycled-materials.jpg"
        description = "Recycled Materials Organized"
    },
    @{
        url = "https://images.unsplash.com/photo-1605600659873-d808a13e4d2a?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
        filename = "img/metal-scrap.jpg"
        description = "Metal Scrap Collection"
    },
    @{
        url = "https://images.unsplash.com/photo-1530124566582-a618bc2615dc?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
        filename = "img/repair-tools.jpg"
        description = "Repair Tools"
    },
    @{
        url = "https://images.unsplash.com/photo-1580983567934-5bbaf808a0cb?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
        filename = "img/mechanic-repair.jpg"
        description = "Mechanic Repairing Engine"
    },
    @{
        url = "https://images.unsplash.com/photo-1607463747550-2faba6ee7968?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
        filename = "img/repair-service.jpg"
        description = "Repair Service"
    },
    @{
        url = "https://images.unsplash.com/photo-1513885535751-8b9238bd345a?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
        filename = "img/eco-gifts.jpg"
        description = "Eco-friendly Gifts"
    },
    @{
        url = "https://images.unsplash.com/photo-1553729459-efe14ef6055d?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
        filename = "img/money-rewards.jpg"
        description = "Money Rewards"
    },
    @{
        url = "https://images.unsplash.com/photo-1600857544200-b2f666a9a2ec?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"
        filename = "img/reward-coupons.jpg"
        description = "Reward Coupons"
    }
)

# Download each image
foreach ($image in $images) {
    Write-Host "Downloading $($image.description) to $($image.filename)..."
    Invoke-WebRequest -Uri $image.url -OutFile $image.filename
}

Write-Host "All images have been downloaded successfully!"
Write-Host "Now updating HTML file to reference these images..." 