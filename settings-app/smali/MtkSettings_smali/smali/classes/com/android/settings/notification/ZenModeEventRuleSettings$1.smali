.class Lcom/android/settings/notification/ZenModeEventRuleSettings$1;
.super Ljava/lang/Object;
.source "ZenModeEventRuleSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeEventRuleSettings;->onCreateInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeEventRuleSettings;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 123
    check-cast p2, Ljava/lang/String;

    .line 124
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->access$100(Landroid/service/notification/ZenModeConfig$EventInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 125
    :cond_0
    const/16 p1, 0x3a

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    .line 126
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v1

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    .line 127
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v0

    const/4 v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 128
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 129
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object p1

    const/4 p2, 0x0

    iput-object p2, p1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    iget-object p2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$1;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-static {p2}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object p2

    invoke-static {p2}, Landroid/service/notification/ZenModeConfig;->toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->updateRule(Landroid/net/Uri;)V

    .line 132
    return v1
.end method
