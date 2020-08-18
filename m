Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED1824A0F1
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Aug 2020 15:59:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k8OcY-0001DW-Ep; Wed, 19 Aug 2020 13:59:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <allen.lkml@gmail.com>)
 id 1k7xjW-0003Zf-1n; Tue, 18 Aug 2020 09:16:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XZ5gSn6/zxDXq0JbeRnX/CK1QRoCv2dl+iqkeCW1pS8=; b=FDFF/7r5iyy1ObedqkLRkWTCnO
 yUv1xFZP6N57m8RbX8ZiBXq0oDIkGP0S0mcRI3tdQ0D+Qa9ZvN2AAxADBl6tHoahtNufM77GWb0g2
 bd0czAVXLeubPie3BUvU75gC10UdiKrsVdQYBPa965MMtYGM206QrudzDOYckleJT3hw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XZ5gSn6/zxDXq0JbeRnX/CK1QRoCv2dl+iqkeCW1pS8=; b=ECMFhEG8luY8IwjzNssmJ+mONj
 VD7BVNZv/44dnAtr9PnQxmGYOFpAA8VgldcJ2Y+xl4ZOnA36UAH4dIXTozSRndrYd4YnkH7vatZ/f
 aDL8qnfpQdvlIHpmkXhia3MgGQsfe08REMusPaS6CScG5FD0Wm7dfu1/fQ5XwYq1jZ2g=;
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k7xjU-00BFVG-9e; Tue, 18 Aug 2020 09:16:42 +0000
Received: by mail-oi1-f195.google.com with SMTP id n128so13501431oif.0;
 Tue, 18 Aug 2020 02:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XZ5gSn6/zxDXq0JbeRnX/CK1QRoCv2dl+iqkeCW1pS8=;
 b=oAk9KLz4zf32ff8AWoLjc9RpJCU0tp2pqYqSeAskrK0ZuvgefHaPfMSjLFyZsdmGPe
 te4G+1pjgni1LPzEs8ACMIxIUvuyoHAcuLUM0MtETeGVCh8WdwKiKS7tJajtKiiKuEyx
 nSe+wjaCOjY/H+YXbeH9/w5O+j8asiWzGL7zUumlH8Xb/MaDp1vsFa9oDik3gP5W3Oy7
 HRujZb5rqlu9TSahSfcAn2YGlPMcHISk8UGHumVZMc/13KMA90JvU03ivC2rMRSghxXu
 ie9/eP5XbwHCE84n2rwd4SGlM0keNy0vyT0/ZYaZo7htPQZLV5eKfkX6krYhP46i5znY
 prXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XZ5gSn6/zxDXq0JbeRnX/CK1QRoCv2dl+iqkeCW1pS8=;
 b=iWse5z3oIx/bUceO8WlO4oALhxAsFZjlxdgpJguXh0Qk3Wkpxdn8zpR0yrsq0xrJGx
 8SiIPxQWhG7YXDItuYbuRc37j6SbRb+tkoSfxXV7WkZvjG5lepFlxL+B2PXSYCYMtg61
 icna+HAoO7cw90FABZmxu0JZC4lOKbES60h1+k2Tf6ApF7PYurU1hr+VpRotxC5Pj92K
 oSXnw7Sxa3RFlRer2qsKBkPMLYD4uCJb7D8/fMF8NdyU6D93A4+8Ayr73epLTKexQVRA
 UY3kRxP0HGcdnH8AXRwREblkZMrCUwOvO1txMMRSN2UZQZVXkMJWzWbsAuf+6lJrVbsr
 MepQ==
X-Gm-Message-State: AOAM531u66K9eSx3fh1RFQ60iTFn0Li4xyN4EoCrt09a26jIPvSEQ2lR
 QTZ5RWYc8Fd83Kq2FVZfFu/AjQOo/LzKFBkhUwc=
X-Google-Smtp-Source: ABdhPJzoZrDFJA/sZSMB5eCKUKMwLIoW6MWAoom1GEFglhx9K88XCdrK0saLkhUm1iVXF7PVM6hI174/8O0mwAcreAA=
X-Received: by 2002:aca:6c6:: with SMTP id 189mr11628018oig.134.1597742194718; 
 Tue, 18 Aug 2020 02:16:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-3-allen.cryptic@gmail.com>
 <20200817121514.GE2865@minyard.net>
In-Reply-To: <20200817121514.GE2865@minyard.net>
From: Allen <allen.lkml@gmail.com>
Date: Tue, 18 Aug 2020 14:46:23 +0530
Message-ID: <CAOMdWSJXCn5KYHen4kynH1A5Oixo+yPzs3oathsfa8gtKZGkjg@mail.gmail.com>
To: minyard@acm.org
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (allen.lkml[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.195 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mvista.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1k7xjU-00BFVG-9e
X-Mailman-Approved-At: Wed, 19 Aug 2020 13:59:09 +0000
Subject: Re: [Openipmi-developer] [PATCH] char: ipmi: convert tasklets to
 use new tasklet_setup() API
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 linux-atm-general@lists.sourceforge.net, manohar.vanga@gmail.com,
 airlied@linux.ie, linux-hyperv@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 James.Bottomley@hansenpartnership.com, kys@microsoft.com,
 anton.ivanov@cambridgegreys.com, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 maximlevitsky@gmail.com, richard@nod.at, deller@gmx.de,
 jassisinghbrar@gmail.com, 3chas3@gmail.com, intel-gfx@lists.freedesktop.org,
 Jakub Kicinski <kuba@kernel.org>, mporter@kernel.crashing.org,
 jdike@addtoit.com, Kees Cook <keescook@chromium.org>, oakad@yahoo.com,
 s.hauer@pengutronix.de, linux-input@vger.kernel.org,
 linux-um@lists.infradead.org, linux-block@vger.kernel.org, broonie@kernel.org,
 openipmi-developer@lists.sourceforge.net, mitch@sfgoth.com,
 linux-arm-kernel@lists.infradead.org, axboe@kernel.dk,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org, martyn@welchs.me.uk,
 dmitry.torokhov@gmail.com, linux-mmc@vger.kernel.org, sre@kernel.org,
 linux-spi@vger.kernel.org, alex.bou9@gmail.com,
 Allen Pais <allen.cryptic@gmail.com>, stefanr@s5r6.in-berlin.de,
 daniel@ffwll.ch, linux-ntb@googlegroups.com,
 Romain Perier <romain.perier@gmail.com>, shawnguo@kernel.org,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

> >
> > Signed-off-by: Romain Perier <romain.perier@gmail.com>
> > Signed-off-by: Allen Pais <allen.lkml@gmail.com>
>
> This looks good to me.
>
> Reviewed-by: Corey Minyard <cminyard@mvista.com>
>
> Are you planning to push this, or do you want me to take it?  If you
> want me to take it, what is the urgency?

 Thanks. Well, not hurry, as long as it goes into 5.9 with all other
changes.


>
> -corey
>
> > ---
> >  drivers/char/ipmi/ipmi_msghandler.c | 13 ++++++-------
> >  1 file changed, 6 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> > index 737c0b6b24ea..e1814b6a1225 100644
> > --- a/drivers/char/ipmi/ipmi_msghandler.c
> > +++ b/drivers/char/ipmi/ipmi_msghandler.c
> > @@ -39,7 +39,7 @@
> >
> >  static struct ipmi_recv_msg *ipmi_alloc_recv_msg(void);
> >  static int ipmi_init_msghandler(void);
> > -static void smi_recv_tasklet(unsigned long);
> > +static void smi_recv_tasklet(struct tasklet_struct *t);
> >  static void handle_new_recv_msgs(struct ipmi_smi *intf);
> >  static void need_waiter(struct ipmi_smi *intf);
> >  static int handle_one_recv_msg(struct ipmi_smi *intf,
> > @@ -3430,9 +3430,8 @@ int ipmi_add_smi(struct module         *owner,
> >       intf->curr_seq = 0;
> >       spin_lock_init(&intf->waiting_rcv_msgs_lock);
> >       INIT_LIST_HEAD(&intf->waiting_rcv_msgs);
> > -     tasklet_init(&intf->recv_tasklet,
> > -                  smi_recv_tasklet,
> > -                  (unsigned long) intf);
> > +     tasklet_setup(&intf->recv_tasklet,
> > +                  smi_recv_tasklet);
> >       atomic_set(&intf->watchdog_pretimeouts_to_deliver, 0);
> >       spin_lock_init(&intf->xmit_msgs_lock);
> >       INIT_LIST_HEAD(&intf->xmit_msgs);
> > @@ -4467,10 +4466,10 @@ static void handle_new_recv_msgs(struct ipmi_smi *intf)
> >       }
> >  }
> >
> > -static void smi_recv_tasklet(unsigned long val)
> > +static void smi_recv_tasklet(struct tasklet_struct *t)
> >  {
> >       unsigned long flags = 0; /* keep us warning-free. */
> > -     struct ipmi_smi *intf = (struct ipmi_smi *) val;
> > +     struct ipmi_smi *intf = from_tasklet(intf, t, recv_tasklet);
> >       int run_to_completion = intf->run_to_completion;
> >       struct ipmi_smi_msg *newmsg = NULL;
> >
> > @@ -4542,7 +4541,7 @@ void ipmi_smi_msg_received(struct ipmi_smi *intf,
> >               spin_unlock_irqrestore(&intf->xmit_msgs_lock, flags);
> >
> >       if (run_to_completion)
> > -             smi_recv_tasklet((unsigned long) intf);
> > +             smi_recv_tasklet(&intf->recv_tasklet);
> >       else
> >               tasklet_schedule(&intf->recv_tasklet);
> >  }
> > --
> > 2.17.1
> >



-- 
       - Allen


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
