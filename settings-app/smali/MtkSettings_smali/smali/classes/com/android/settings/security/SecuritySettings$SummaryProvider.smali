.class Lcom/android/settings/security/SecuritySettings$SummaryProvider;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/security/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Lcom/android/settings/security/SecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 207
    iput-object p2, p0, Lcom/android/settings/security/SecuritySettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 208
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 2

    .line 212
    if-eqz p1, :cond_1

    .line 213
    iget-object p1, p0, Lcom/android/settings/security/SecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 214
    invoke-static {p1}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    .line 215
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 216
    iget-object p1, p0, Lcom/android/settings/security/SecuritySettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v0, p0, Lcom/android/settings/security/SecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v1, 0x7f120bd5    # @string/security_dashboard_summary 'Screen lock, fingerprint'

    .line 217
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-virtual {p1, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 219
    :cond_0
    iget-object p1, p0, Lcom/android/settings/security/SecuritySettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v0, p0, Lcom/android/settings/security/SecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v1, 0x7f120bd6    # @string/security_dashboard_summary_no_fingerprint 'Screen lock'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 223
    :cond_1
    :goto_0
    return-void
.end method
