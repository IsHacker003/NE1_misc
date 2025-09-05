.class Lcom/android/settings/print/PrintServiceSettingsFragment$4;
.super Ljava/lang/Object;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/print/PrintServiceSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$4;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$4;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$4;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->access$100(Lcom/android/settings/print/PrintServiceSettingsFragment;)Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 428
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    .line 417
    const/4 p1, 0x1

    return p1
.end method
