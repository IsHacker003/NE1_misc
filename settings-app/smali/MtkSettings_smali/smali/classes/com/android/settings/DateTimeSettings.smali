.class public Lcom/android/settings/DateTimeSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;
.implements Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;
.implements Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController$GPSPreferenceHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DateTimeSettings$DateTimeSearchIndexProvider;,
        Lcom/android/settings/DateTimeSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private isGPSSupport:Z

.field private mLocationManager:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 219
    new-instance v0, Lcom/android/settings/DateTimeSettings$1;

    invoke-direct {v0}, Lcom/android/settings/DateTimeSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/DateTimeSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 229
    new-instance v0, Lcom/android/settings/DateTimeSettings$DateTimeSearchIndexProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/DateTimeSettings$DateTimeSearchIndexProvider;-><init>(Lcom/android/settings/DateTimeSettings$1;)V

    sput-object v0, Lcom/android/settings/DateTimeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 99
    const-string v2, "firstRun"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 101
    new-instance v2, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;

    invoke-direct {v2, v0, p0, v1}, Lcom/android/settings/datetime/AutoTimeZonePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;Z)V

    .line 106
    iget-boolean v3, p0, Lcom/android/settings/DateTimeSettings;->isGPSSupport:Z

    if-eqz v3, :cond_0

    .line 107
    new-instance v3, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;

    invoke-direct {v3, v0, p0}, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;-><init>(Landroid/content/Context;Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController$GPSPreferenceHost;)V

    goto :goto_0

    .line 110
    :cond_0
    new-instance v3, Lcom/android/settings/datetime/AutoTimePreferenceController;

    invoke-direct {v3, v0, p0}, Lcom/android/settings/datetime/AutoTimePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;)V

    .line 114
    :goto_0
    new-instance v4, Lcom/android/settings/datetime/AutoTimeFormatPreferenceController;

    invoke-direct {v4, v0, p0}, Lcom/android/settings/datetime/AutoTimeFormatPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;)V

    .line 117
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v4, Lcom/android/settings/datetime/TimeFormatPreferenceController;

    invoke-direct {v4, v0, p0, v1}, Lcom/android/settings/datetime/TimeFormatPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;Z)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    new-instance v1, Lcom/android/settings/datetime/TimeZonePreferenceController;

    invoke-direct {v1, v0, v2}, Lcom/android/settings/datetime/TimeZonePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/AutoTimeZonePreferenceController;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    new-instance v1, Lcom/android/settings/datetime/TimePreferenceController;

    invoke-direct {v1, v0, p0, v3}, Lcom/android/settings/datetime/TimePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/TimePreferenceController$TimePreferenceHost;Lcom/android/settings/datetime/AutoTimePreferenceController;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    new-instance v1, Lcom/android/settings/datetime/DatePreferenceController;

    invoke-direct {v1, v0, p0, v3}, Lcom/android/settings/datetime/DatePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;Lcom/android/settings/datetime/AutoTimePreferenceController;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    return-object p1
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    .line 158
    packed-switch p1, :pswitch_data_0

    .line 168
    const/4 p1, 0x0

    return p1

    .line 165
    :pswitch_0
    const/16 p1, 0x26

    return p1

    .line 162
    :pswitch_1
    const/16 p1, 0x260

    return p1

    .line 160
    :pswitch_2
    const/16 p1, 0x25f

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 70
    const-string v0, "DateTimeSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 65
    const/16 v0, 0x26

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 3

    .line 75
    const-string v0, "DateTimeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferenceScreenResId, isGPSSupport= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/DateTimeSettings;->isGPSSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-boolean v0, p0, Lcom/android/settings/DateTimeSettings;->isGPSSupport:Z

    if-eqz v0, :cond_0

    .line 78
    const v0, 0x7f15003e    # @xml/date_time_ext_prefs 'res/xml/date_time_ext_prefs.xml'

    return v0

    .line 80
    :cond_0
    const v0, 0x7f15003f    # @xml/date_time_prefs 'res/xml/date_time_prefs.xml'

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 87
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/settings/DateTimeSettings;->mLocationManager:Landroid/location/LocationManager;

    .line 88
    iget-object v0, p0, Lcom/android/settings/DateTimeSettings;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/DateTimeSettings;->isGPSSupport:Z

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/android/settings/datetime/TimeChangeListenerMixin;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/datetime/TimeChangeListenerMixin;-><init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 92
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 192
    iget-boolean p1, p0, Lcom/android/settings/DateTimeSettings;->isGPSSupport:Z

    if-eqz p1, :cond_0

    .line 193
    const-string p1, "DateTimeSettings"

    const-string v0, "onCancel Dialog, Reset AutoTime Settings"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-class p1, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/DateTimeSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;

    invoke-virtual {p1}, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->reSetAutoTimePref()V

    .line 196
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    .line 139
    packed-switch p1, :pswitch_data_0

    .line 152
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 148
    :pswitch_0
    const-class p1, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/DateTimeSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mediatek/settings/datetime/AutoTimeExtPreferenceController;->buildGPSConfirmDialog(Landroid/app/Activity;)Landroid/app/AlertDialog;

    move-result-object p1

    .line 148
    return-object p1

    .line 144
    :pswitch_1
    const-class p1, Lcom/android/settings/datetime/TimePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/DateTimeSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datetime/TimePreferenceController;

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/datetime/TimePreferenceController;->buildTimePicker(Landroid/app/Activity;)Landroid/app/TimePickerDialog;

    move-result-object p1

    .line 144
    return-object p1

    .line 141
    :pswitch_2
    const-class p1, Lcom/android/settings/datetime/DatePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/DateTimeSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datetime/DatePreferenceController;

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/datetime/DatePreferenceController;->buildDatePicker(Landroid/app/Activity;)Landroid/app/DatePickerDialog;

    move-result-object p1

    .line 141
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showDatePicker()V
    .locals 1

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    .line 181
    return-void
.end method

.method public showGPSConfirmDialog()V
    .locals 1

    .line 186
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->removeDialog(I)V

    .line 187
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    .line 188
    invoke-virtual {p0, p0}, Lcom/android/settings/DateTimeSettings;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 189
    return-void
.end method

.method public showTimePicker()V
    .locals 1

    .line 174
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->removeDialog(I)V

    .line 175
    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettings;->showDialog(I)V

    .line 176
    return-void
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 0

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettings;->updatePreferenceStates()V

    .line 135
    return-void
.end method
