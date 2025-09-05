.class public Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BatteryTipDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field mBatteryTip:Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

.field mMetricsKey:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;I)Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;
    .locals 3

    .line 62
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;-><init>()V

    .line 64
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 65
    const-string v2, "battery_tip"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 66
    const-string p0, "metrics_key"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 150
    const/16 v0, 0x52b

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;

    .line 156
    if-nez p1, :cond_0

    .line 157
    return-void

    .line 159
    :cond_0
    iget-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->mBatteryTip:Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 159
    invoke-static {p2, v0, v1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipUtils;->getActionForBatteryTip(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;

    move-result-object p2

    .line 162
    if-eqz p2, :cond_1

    .line 163
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->mMetricsKey:I

    invoke-virtual {p2, v0}, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;->handlePositiveAction(I)V

    .line 165
    :cond_1
    iget-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->mBatteryTip:Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    invoke-interface {p1, p2}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;->onBatteryTipHandled(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V

    .line 166
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 77
    const-string v1, "battery_tip"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->mBatteryTip:Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    .line 78
    const-string v1, "metrics_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->mMetricsKey:I

    .line 80
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->mBatteryTip:Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getType()I

    move-result p1

    const v1, 0x7f0d011b    # @layout/recycler_view 'res/layout/recycler_view.xml'

    const v2, 0x104000a    # @android:string/ok

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    .line 144
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->mBatteryTip:Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 133
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->mBatteryTip:Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;

    .line 134
    nop

    .line 135
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-static {v0, p1}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 137
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f12023c    # @string/battery_tip_unrestrict_app_dialog_title 'Remove restriction?'

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f12023a    # @string/battery_tip_unrestrict_app_dialog_message 'This app will be able to use battery in the background. Your battery may run out sooner than expecte ...'

    .line 139
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f12023b    # @string/battery_tip_unrestrict_app_dialog_ok 'Remove'

    .line 140
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120239    # @string/battery_tip_unrestrict_app_dialog_cancel 'Cancel'

    .line 141
    invoke-virtual {p1, v0, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 142
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 137
    return-object p1

    .line 82
    :pswitch_2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120228    # @string/battery_tip_dialog_summary_message 'Your apps are using a normal amount of battery. If apps use too much battery, your phone will sugges ...'

    .line 83
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 84
    invoke-virtual {p1, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 82
    return-object p1

    .line 87
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->mBatteryTip:Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;

    .line 88
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    invoke-virtual {v6, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    .line 91
    new-instance v6, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v6, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 92
    new-instance v6, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;

    .line 93
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;->getHighUsageAppList()Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v0, v7}, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 92
    invoke-virtual {v1, v6}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 95
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120227    # @string/battery_tip_dialog_message 'Your phone has been used more than usual. Your battery may run out sooner than expected.\n\nTop %1$d a ...'

    new-array v4, v4, [Ljava/lang/Object;

    .line 97
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;->getHighUsageAppList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    .line 96
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 98
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 99
    invoke-virtual {p1, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 95
    return-object p1

    .line 102
    :pswitch_4
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->mBatteryTip:Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    .line 103
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->getRestrictAppList()Ljava/util/List;

    move-result-object v2

    .line 104
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 105
    nop

    .line 106
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    iget-object v7, v7, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    .line 105
    invoke-static {v0, v7}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 108
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f10000a    # @plurals/battery_tip_restrict_app_dialog_title

    new-array v11, v4, [Ljava/lang/Object;

    .line 110
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v3

    .line 109
    invoke-virtual {v9, v10, v6, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f120232    # @string/battery_tip_restrict_app_dialog_ok 'Restrict'

    .line 111
    invoke-virtual {v8, v9, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const/high16 v9, 0x1040000    # @android:string/cancel

    .line 112
    invoke-virtual {v8, v9, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 113
    if-ne v6, v4, :cond_0

    .line 114
    const p1, 0x7f120231    # @string/battery_tip_restrict_app_dialog_message 'To save battery, stop %1$s from using battery in the background. This app may not work properly and  ...'

    new-array v0, v4, [Ljava/lang/Object;

    aput-object v7, v0, v3

    .line 115
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 114
    invoke-virtual {v8, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 116
    :cond_0
    const/4 v7, 0x5

    if-gt v6, v7, :cond_1

    .line 117
    const p1, 0x7f120233    # @string/battery_tip_restrict_apps_less_than_5_dialog_message 'To save battery, stop these apps from using battery in the background. Restricted apps may not work  ...'

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-virtual {v8, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 120
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 121
    invoke-virtual {p1, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .line 122
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 123
    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;

    invoke-direct {v1, v0, v2}, Lcom/android/settings/fuelgauge/batterytip/HighUsageAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 124
    invoke-virtual {v8, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 125
    goto :goto_0

    .line 126
    :cond_1
    const v1, 0x7f120234    # @string/battery_tip_restrict_apps_more_than_5_dialog_message 'To save battery, stop these apps from using battery in the background. Restricted apps may not work  ...'

    new-array v2, v4, [Ljava/lang/Object;

    .line 128
    invoke-virtual {p1, v0}, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;->getRestrictAppsString(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v2, v3

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 131
    :goto_0
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
