.class public final Lcom/android/settings/support/SupportPhone;
.super Ljava/lang/Object;
.source "SupportPhone.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settings/support/SupportPhone;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final isTollFree:Z

.field public final language:Ljava/lang/String;

.field public final number:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Lcom/android/settings/support/SupportPhone$1;

    invoke-direct {v0}, Lcom/android/settings/support/SupportPhone$1;-><init>()V

    sput-object v0, Lcom/android/settings/support/SupportPhone;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/support/SupportPhone;->language:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/support/SupportPhone;->number:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/support/SupportPhone;->isTollFree:Z

    .line 51
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 68
    iget-object p2, p0, Lcom/android/settings/support/SupportPhone;->language:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object p2, p0, Lcom/android/settings/support/SupportPhone;->number:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-boolean p2, p0, Lcom/android/settings/support/SupportPhone;->isTollFree:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    return-void
.end method
