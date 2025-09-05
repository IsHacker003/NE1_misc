.class Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment$SummaryProvider;
.super Ljava/lang/Object;
.source "MyDeviceInfoFragment.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 213
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 2

    .line 217
    if-eqz p1, :cond_1

    .line 219
    const-string p1, "ro.product.model.display"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getMsvSuffix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/aboutphone/MyDeviceInfoFragment$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-static {}, Lcom/android/settings/deviceinfo/DeviceModelPreferenceController;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 227
    :cond_1
    :goto_0
    return-void
.end method
