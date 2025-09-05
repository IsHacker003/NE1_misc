.class Lcom/android/settings/notification/ZenRuleSelectionDialog$2;
.super Ljava/lang/Object;
.source "ZenRuleSelectionDialog.java"

# interfaces
.implements Lcom/android/settings/utils/ZenServiceListing$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenRuleSelectionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenRuleSelectionDialog;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$2;->this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServicesReloaded(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/content/pm/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 194
    invoke-static {}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ZenRuleSelectionDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Services reloaded: count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-static {}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->access$100()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 196
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ServiceInfo;

    .line 198
    invoke-static {}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->access$200()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->getRuleInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Lcom/android/settings/notification/ZenRuleInfo;

    move-result-object v2

    .line 199
    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/android/settings/notification/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_2

    .line 200
    invoke-static {}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->access$300()Landroid/app/NotificationManager;

    move-result-object v3

    iget-object v4, v2, Lcom/android/settings/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/android/settings/notification/ZenRuleInfo;->ruleInstanceLimit:I

    if-lez v3, :cond_1

    iget v3, v2, Lcom/android/settings/notification/ZenRuleInfo;->ruleInstanceLimit:I

    .line 202
    invoke-static {}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->access$300()Landroid/app/NotificationManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/NotificationManager;->getRuleInstanceCount(Landroid/content/ComponentName;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-lt v3, v1, :cond_2

    .line 203
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_2
    goto :goto_0

    .line 206
    :cond_3
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$2;->this$0:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-static {p1, v0}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->access$400(Lcom/android/settings/notification/ZenRuleSelectionDialog;Ljava/util/Set;)V

    .line 207
    return-void
.end method
