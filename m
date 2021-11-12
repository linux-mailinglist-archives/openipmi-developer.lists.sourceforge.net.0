Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FF444EBEA
	for <lists+openipmi-developer@lfdr.de>; Fri, 12 Nov 2021 18:19:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mlaCy-0007j0-IC; Fri, 12 Nov 2021 17:19:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ioanna-maria.alifieraki@canonical.com>)
 id 1mlaCx-0007iu-6V
 for openipmi-developer@lists.sourceforge.net; Fri, 12 Nov 2021 17:19:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gxk6VajY+mymEu0iayO1IXlVmjEZfe7/jfbVMCqwCUw=; b=NjPPSl1pkdvRsllLeskkdw38UQ
 ie2PfkyU8hNtgqLA1b5yuba4ws2tIG/WQjeiSREZeaqA8Eg4JyxNZw/Tw6/Kuzx7ntaVjoSRZXMTy
 rskUINEAq1er5zR4A4CGUZxBtynytY6oCamwMkE5wtaVtha+xe15Evvcr22Uv0zmOWts=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gxk6VajY+mymEu0iayO1IXlVmjEZfe7/jfbVMCqwCUw=; b=OhWNiGD9z1XUAEAN1rzTu2qf8I
 1SzB5NdwVrZ4i5WLig8H7KUO+3v3LAeGQILHDzgVH3q2TxZ+/mLdPN6yxEEOXUSM1bARY1JnILZxM
 LEa5sf6rFhpV9bdfm8RdJ5BKNLdMx1XcP1sANpf6UbHvP8HYZqNHFLxicztAh8cSzHOY=;
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mlaCs-000754-Qt
 for openipmi-developer@lists.sourceforge.net; Fri, 12 Nov 2021 17:19:23 +0000
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com
 [209.85.215.197])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id A2B303F166
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 12 Nov 2021 17:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1636737550;
 bh=gxk6VajY+mymEu0iayO1IXlVmjEZfe7/jfbVMCqwCUw=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=k57hF2N9ukvYvxRGIZeoorSTgLCtAMCG/cqMbpMxOJRQcF0VQ4v6c2K+E9MYUq4pQ
 NjyIVLi3AEXZgqlKMKw1wvRhK42ScEoAFicbO0fv6WiWzORlHp3umXRbaYfYbk31Fu
 kp18gEXaI7QdNGw11Xyr2uN+tpZoHlNyX+w2PGsfqeDTvyDSc9bHgQz3Gm9hxdU9rb
 mDjkmMSZ/9TOmX6BjMhM5C8VslgjV689M8YujOLbeEj19YEoSh+h+nb15u11UW0PHb
 QxLkbFpAeHNpHrNFfrvFwq3ROIyQYoI3GFOJvFxwgG0NAxkelJwTTOxGT7pvjoA844
 dmxVaDFuK6QCg==
Received: by mail-pg1-f197.google.com with SMTP id
 q29-20020a631f5d000000b002dfcc4e0201so3308141pgm.3
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 12 Nov 2021 09:19:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gxk6VajY+mymEu0iayO1IXlVmjEZfe7/jfbVMCqwCUw=;
 b=IYh/0LMWDJpkBL4myIcoJyhfpg/De9Q1muoOnz71bUrf2mFqAiX3JGu4j/L1KcXZN6
 OxRkZP0vczkTMtU7sJPbNPDD7Pi40Yv5S5wIGj2/ng189VvBLytd96gi5rd1hKvzTVV9
 noBCW2l+mdbkARiLaOxWZ1u6Qh1OUDZ5XoPwL5HQQxlKy8HIfaEdSjRqOb7ZiBud4KCA
 0iIr5fYDfdtS2Ehnq1Qtz1D0M3J2aMWxeqdW1VRiiG2SEdxr/+OW2bOuxBj3siVaGGpg
 Db6XDak71aKHTfsdNmkSf9M57SoGq0k0o9nJpmh4UH+2pMWxR7/9kXjib1Inq+4NDDme
 DydA==
X-Gm-Message-State: AOAM532Tqdh1pkwyNWSUBOy+VP/1oihGr2idv5A/S/ClVtxy0v0U0pWN
 p2okKHqaB+NKk+pbK1A2rYW2NHBQd4B8iO9vEvlJ6Wg4JYNizdtnTONtM35OoHZV3V7Ar4TA+lL
 cJP8Jt83LxF/ouhBQlmhvc7Xy/r9RfLK9/U2QqrLytNSv9r2gZq3IlWv2nh3sMahisaYGQmAGWw
 ==
X-Received: by 2002:a05:6a00:a23:b0:43d:e856:a3d4 with SMTP id
 p35-20020a056a000a2300b0043de856a3d4mr15426653pfh.17.1636737549158; 
 Fri, 12 Nov 2021 09:19:09 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz0hYUq4M324GdI6hCCV/M34WZh6reSCGX23+hpq8u80vT2d0h4drXPrM9cTkQifw1fNhLz71kvNLwAHKFhwWA=
X-Received: by 2002:a05:6a00:a23:b0:43d:e856:a3d4 with SMTP id
 p35-20020a056a000a2300b0043de856a3d4mr15426602pfh.17.1636737548759; Fri, 12
 Nov 2021 09:19:08 -0800 (PST)
MIME-Version: 1.0
References: <20211112165413.7747-1-ioanna-maria.alifieraki@canonical.com>
 <20211112170905.GI4667@minyard.net>
In-Reply-To: <20211112170905.GI4667@minyard.net>
From: Ioanna Alifieraki <ioanna-maria.alifieraki@canonical.com>
Date: Fri, 12 Nov 2021 19:18:42 +0200
Message-ID: <CAOLeGd0hKQYzsrgFQEd_fB-GdqDN==hq0dZE6_ou+hLVKaohJg@mail.gmail.com>
To: minyard@acm.org
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Nov 12,
 2021 at 7:09 PM Corey Minyard <minyard@acm.org>
 wrote: > > On Fri, Nov 12, 2021 at 06:54:13PM +0200, Ioanna Alifieraki wrote:
 > > Currently when removing an ipmi_user the removal is de [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.125.188.122 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1mlaCs-000754-Qt
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Move remove_work to
 dedicated workqueue
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: openipmi-developer@lists.sourceforge.net, ioanna.alifieraki@gmail.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Nov 12, 2021 at 7:09 PM Corey Minyard <minyard@acm.org> wrote:
>
> On Fri, Nov 12, 2021 at 06:54:13PM +0200, Ioanna Alifieraki wrote:
> > Currently when removing an ipmi_user the removal is deferred as a work on
> > the system's workqueue. Although this guarantees the free operation will
> > occur in non atomic context, it can race with the ipmi_msghandler module
> > removal (see [1]) . In case a remove_user work is scheduled for removal
> > and shortly after ipmi_msghandler module is removed we can end up in a
> > situation where the module is removed fist and when the work is executed
> > the system crashes with :
> > BUG: unable to handle page fault for address: ffffffffc05c3450
> > PF: supervisor instruction fetch in kernel mode
> > PF: error_code(0x0010) - not-present page
> > because the pages of the module are gone. In cleanup_ipmi() there is no
> > easy way to detect if there are any pending works to flush them before
> > removing the module. This patch creates a separate workqueue and schedules
> > the remove_work works on it. When removing the module the workqueue is
> > flushed to avoid the race.
>
> Yeah, this is an issue.  One comment below...
>
> >
> > [1] https://bugs.launchpad.net/bugs/1950666
> >
> > Cc: stable@vger.kernel.org
> > Fixes: 3b9a907223d7 (ipmi: fix sleep-in-atomic in free_user at cleanup SRCU user->release_barrier)
> > Signed-off-by: Ioanna Alifieraki <ioanna-maria.alifieraki@canonical.com>
> > ---
> >  drivers/char/ipmi/ipmi_msghandler.c | 9 ++++++++-
> >  1 file changed, 8 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> > index deed355422f4..9e0ad2ccd3e0 100644
> > --- a/drivers/char/ipmi/ipmi_msghandler.c
> > +++ b/drivers/char/ipmi/ipmi_msghandler.c
> > @@ -191,6 +191,8 @@ struct ipmi_user {
> >       struct work_struct remove_work;
> >  };
> >
> > +struct workqueue_struct *remove_work_wq;
> > +
> >  static struct ipmi_user *acquire_ipmi_user(struct ipmi_user *user, int *index)
> >       __acquires(user->release_barrier)
> >  {
> > @@ -1297,7 +1299,7 @@ static void free_user(struct kref *ref)
> >       struct ipmi_user *user = container_of(ref, struct ipmi_user, refcount);
> >
> >       /* SRCU cleanup must happen in task context. */
> > -     schedule_work(&user->remove_work);
> > +     queue_work(remove_work_wq, &user->remove_work);
> >  }
> >
> >  static void _ipmi_destroy_user(struct ipmi_user *user)
> > @@ -5383,6 +5385,8 @@ static int ipmi_init_msghandler(void)
> >
> >       atomic_notifier_chain_register(&panic_notifier_list, &panic_block);
> >
> > +     remove_work_wq = create_singlethread_workqueue("ipmi-msghandler-remove-wq");
> > +
>
> Shouldn't you check the return value here?
>

Yes you're right, my bad.
I'll incorporate Christophe's feedback too and send a v2 next week.
Thanks all for the feedback!

> -corey
>
> >       initialized = true;
> >
> >  out:
> > @@ -5408,6 +5412,9 @@ static void __exit cleanup_ipmi(void)
> >       int count;
> >
> >       if (initialized) {
> > +             flush_workqueue(remove_work_wq);
> > +             destroy_workqueue(remove_work_wq);
> > +
> >               atomic_notifier_chain_unregister(&panic_notifier_list,
> >                                                &panic_block);
> >
> > --
> > 2.17.1
> >


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
