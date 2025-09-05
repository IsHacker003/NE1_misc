.class Lcom/android/settings/location/LocationSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "LocationSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/location/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/android/settings/location/LocationSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 153
    iput-object p2, p0, Lcom/android/settings/location/LocationSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 154
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 1

    .line 158
    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/android/settings/location/LocationSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v0, p0, Lcom/android/settings/location/LocationSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 160
    invoke-static {v0}, Lcom/android/settings/location/LocationPreferenceController;->getLocationSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {p1, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 162
    :cond_0
    return-void
.end method
