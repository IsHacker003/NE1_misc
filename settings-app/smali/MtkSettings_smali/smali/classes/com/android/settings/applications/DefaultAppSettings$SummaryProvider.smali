.class Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "DefaultAppSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/DefaultAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultBrowserPreferenceController:Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;

.field private final mDefaultPhonePreferenceController:Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;

.field private final mDefaultSmsPreferenceController:Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p1, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 138
    iput-object p2, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 139
    new-instance p1, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;

    iget-object p2, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mDefaultSmsPreferenceController:Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;

    .line 140
    new-instance p1, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;

    iget-object p2, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mDefaultBrowserPreferenceController:Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;

    .line 141
    new-instance p1, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;

    iget-object p2, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mDefaultPhonePreferenceController:Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;

    .line 142
    return-void
.end method

.method private concatSummaryText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4

    .line 160
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    return-object p2

    .line 163
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    return-object p1

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v1, 0x7f12076f    # @string/join_many_items_middle '%1$s, %2$s'

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public setListening(Z)V
    .locals 1

    .line 146
    if-nez p1, :cond_0

    .line 147
    return-void

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mDefaultBrowserPreferenceController:Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;

    .line 150
    invoke-virtual {p1}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->getDefaultAppLabel()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mDefaultPhonePreferenceController:Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;

    .line 151
    invoke-virtual {v0}, Lcom/android/settings/applications/defaultapps/DefaultPhonePreferenceController;->getDefaultAppLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 149
    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->concatSummaryText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 152
    iget-object v0, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mDefaultSmsPreferenceController:Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;

    .line 153
    invoke-virtual {v0}, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;->getDefaultAppLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 152
    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->concatSummaryText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/settings/applications/DefaultAppSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 157
    :cond_1
    return-void
.end method
