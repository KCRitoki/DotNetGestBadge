.class Lcom/yannis/ledcard/activity/SavePictureActivity$4;
.super Ljava/lang/Object;
.source "SavePictureActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yannis/ledcard/activity/SavePictureActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yannis/ledcard/activity/SavePictureActivity;


# direct methods
.method constructor <init>(Lcom/yannis/ledcard/activity/SavePictureActivity;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity$4;->this$0:Lcom/yannis/ledcard/activity/SavePictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 278
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 279
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity$4;->this$0:Lcom/yannis/ledcard/activity/SavePictureActivity;

    iget-object p1, p1, Lcom/yannis/ledcard/activity/SavePictureActivity;->hscrollview:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 281
    :cond_0
    iget-object p1, p0, Lcom/yannis/ledcard/activity/SavePictureActivity$4;->this$0:Lcom/yannis/ledcard/activity/SavePictureActivity;

    iget-object p1, p1, Lcom/yannis/ledcard/activity/SavePictureActivity;->hscrollview:Landroid/widget/HorizontalScrollView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    return p2
.end method
