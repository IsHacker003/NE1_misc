.class Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$1;
.super Ljava/lang/Object;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

.field final synthetic val$mgr:Landroid/app/FragmentManager;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;Landroid/app/FragmentManager;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$1;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iput-object p2, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$1;->val$mgr:Landroid/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 253
    new-instance p1, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;

    invoke-direct {p1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;-><init>()V

    .line 254
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$1;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    iput-object v0, p1, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    .line 255
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$1;->val$mgr:Landroid/app/FragmentManager;

    const-class v1, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$TimePickerPreference$TimePickerFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 256
    const/4 p1, 0x1

    return p1
.end method
