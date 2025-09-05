.class Lcom/android/settings/datausage/DataUsageList$4;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataUsageList;->bindStats(Landroid/net/NetworkStats;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    .line 415
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$4;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 418
    check-cast p1, Lcom/android/settings/datausage/AppDataUsagePreference;

    .line 419
    invoke-virtual {p1}, Lcom/android/settings/datausage/AppDataUsagePreference;->getItem()Lcom/android/settingslib/AppItem;

    move-result-object p1

    .line 420
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList$4;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v0, p1}, Lcom/android/settings/datausage/DataUsageList;->access$300(Lcom/android/settings/datausage/DataUsageList;Lcom/android/settingslib/AppItem;)V

    .line 421
    const/4 p1, 0x1

    return p1
.end method
