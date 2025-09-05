.class Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;
.super Landroid/view/View$BaseSavedState;
.source "RtlCompatibleViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/RtlCompatibleViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RtlSavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field position:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 111
    new-instance v0, Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState$1;

    invoke-direct {v0}, Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState$1;-><init>()V

    sput-object v0, Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;->position:I

    .line 103
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/android/settings/widget/RtlCompatibleViewPager$1;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 98
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 107
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 108
    iget p2, p0, Lcom/android/settings/widget/RtlCompatibleViewPager$RtlSavedState;->position:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    return-void
.end method
