.class public final Lcom/mediatek/nfcsettingsadapter/ServiceEntry;
.super Ljava/lang/Object;
.source "ServiceEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/nfcsettingsadapter/ServiceEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static TAG:Ljava/lang/String;


# instance fields
.field banner:Ljava/lang/Integer;

.field component:Landroid/content/ComponentName;

.field tag:Ljava/lang/String;

.field title:Ljava/lang/String;

.field wantEnabled:Ljava/lang/Boolean;

.field wasEnabled:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    const-string v0, "ServiceEntry"

    sput-object v0, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->TAG:Ljava/lang/String;

    .line 191
    new-instance v0, Lcom/mediatek/nfcsettingsadapter/ServiceEntry$1;

    invoke-direct {v0}, Lcom/mediatek/nfcsettingsadapter/ServiceEntry$1;-><init>()V

    sput-object v0, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->component:Landroid/content/ComponentName;

    .line 112
    iput-object p2, p0, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->tag:Ljava/lang/String;

    .line 113
    iput-object p3, p0, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->title:Ljava/lang/String;

    .line 114
    iput-object p4, p0, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->banner:Ljava/lang/Integer;

    .line 115
    iput-object p5, p0, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->wasEnabled:Ljava/lang/Boolean;

    .line 116
    iput-object p6, p0, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->wantEnabled:Ljava/lang/Boolean;

    .line 117
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->component:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    return-object p1

    .line 123
    :catch_0
    move-exception p1

    .line 124
    sget-object p1, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->TAG:Ljava/lang/String;

    const-string v0, "Could not load icon."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getWantEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->wantEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getWasEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->wasEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setWantEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->wantEnabled:Ljava/lang/Boolean;

    .line 162
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->banner:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-object v0, p0, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->wasEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    :goto_0
    iget-object v0, p0, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->wantEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 186
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    :goto_1
    iget-object v0, p0, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 189
    return-void
.end method
