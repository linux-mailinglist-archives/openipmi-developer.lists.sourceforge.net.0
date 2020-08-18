Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A01662483E1
	for <lists+openipmi-developer@lfdr.de>; Tue, 18 Aug 2020 13:32:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k7zqz-0004zM-IU; Tue, 18 Aug 2020 11:32:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>)
 id 1k7zqv-0004z6-Vb; Tue, 18 Aug 2020 11:32:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ExSCm02y3qpUSj/p3vHeizuT1G9r/WCp9sMwgc77Xhw=; b=UCnC1i5AqBUDKtV61lrKQWPaFQ
 l/LYMy7KZi3y83eNYJbgWRACulsG2kjE2P1sSo5TdoQF6SmWIJDIJKZJ0yJqhC/ei2HyVlf0HcbNr
 LfH2zkFGL7HPv+82i77ZhUzlDdjvZpfoRqsJhteSXFRzzzNtx0ZWcG6vQ3JEOpLb9YHc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ExSCm02y3qpUSj/p3vHeizuT1G9r/WCp9sMwgc77Xhw=; b=j725XfDs9mYh1Di7ZD3INWdKYg
 eH4U9yvOaMwrBiyt8gGn54KSKBrNh5UX8QtHmxDe1yhsoGLlVFyE9989N6Zqb+c4yoxQ4nF9m+RaV
 sWyAfb+1bml9pUY2FN6cUmlHGdLTM5+cogWB6E7a8XJFQ9WN08l8pH81wzjbMdlXd25U=;
Received: from mail-oo1-f67.google.com ([209.85.161.67])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k7zqr-00BMLi-WF; Tue, 18 Aug 2020 11:32:29 +0000
Received: by mail-oo1-f67.google.com with SMTP id r6so4064932oon.13;
 Tue, 18 Aug 2020 04:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ExSCm02y3qpUSj/p3vHeizuT1G9r/WCp9sMwgc77Xhw=;
 b=lpcmiZRC0Itwnv8XEX0Gt0g4YzYZoFD+0cQTl/lgDNgLVzRe6IuCkiyAsMKmXxtzyS
 DF5PMESVBKjCzoZjEI411d9Iw1L3XxuPkPVdy8WD0iLU9FEOhQt0C+gxLXxG9FwuHlLM
 rhDESa4KirIUUOyZAMa3fGnotL1y1ZAkDn7wOqcdEugoXuPZ7SjANkcHlMg4NvyiNbht
 ty6pszTzwEC7d8yfKI/mGHwXfZomUw3KmQy9Bjfu0tTtXYliq18/FxRxu1WvUqVtTDdI
 K3vNrDjnKkdMwRXJXjv0FWKEbAC/2OegAiVjrrRDrIlbVqKEFhwQhGoW00TK4+pX8gAo
 GGSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=ExSCm02y3qpUSj/p3vHeizuT1G9r/WCp9sMwgc77Xhw=;
 b=WMsg3xgexP48K+xNP+VkeaF80a/Te8Tc3DnRSyMcWoj30K3KTbnryxj0+AaLnxsDOo
 WG+/Y9LHCA7SKbS+MnGW4khMyPzbEUjX/tUnHgeYSRapastwLO8WiyzNGz96PuEgo8r7
 Jn5oLil25EbRbgP8bkJbpCCADKk6MMzg6iowF4+oCLDUNy3YBuK+1f7QkMvuc7x0+3Uk
 YZGdzFYP0SLE0Mpho3enmeB0Im/5EJ16hMBBcHXe3VarKGcAbQqh2LbvdWXDBOI+0dAd
 vkLiByB08N8qd81+VAsfHZco64zW0bCcAr6rVDhlJIqIfUC4uq52EblsVd/NAT+AiRf2
 LvqQ==
X-Gm-Message-State: AOAM532h8atVuEhOJfMn7HHnRS7Z+pjZ1eU+lAVFFhpA/GEuyGJirJ3L
 LdBpXZEBP3EaUPAOlxZ9vA==
X-Google-Smtp-Source: ABdhPJywdLvN8lVgc2yDfHhvIZ4/3whUvULM6gOBhid0aKLlGB5miCWrsMhpAucNStAL2zXitNZckQ==
X-Received: by 2002:a4a:7241:: with SMTP id r1mr14426630ooe.48.1597750340029; 
 Tue, 18 Aug 2020 04:32:20 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id v35sm3862490otb.32.2020.08.18.04.32.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Aug 2020 04:32:18 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPSA id 4AF641800D4;
 Tue, 18 Aug 2020 11:32:17 +0000 (UTC)
Date: Tue, 18 Aug 2020 06:32:16 -0500
From: Corey Minyard <minyard@acm.org>
To: Allen <allen.lkml@gmail.com>
Message-ID: <20200818113216.GD2842@minyard.net>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-3-allen.cryptic@gmail.com>
 <20200817121514.GE2865@minyard.net>
 <CAOMdWSJXCn5KYHen4kynH1A5Oixo+yPzs3oathsfa8gtKZGkjg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMdWSJXCn5KYHen4kynH1A5Oixo+yPzs3oathsfa8gtKZGkjg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.161.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mvista.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.67 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k7zqr-00BMLi-WF
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
Reply-To: minyard@acm.org
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

On Tue, Aug 18, 2020 at 02:46:23PM +0530, Allen wrote:
> > >
> > > Signed-off-by: Romain Perier <romain.perier@gmail.com>
> > > Signed-off-by: Allen Pais <allen.lkml@gmail.com>
> >
> > This looks good to me.
> >
> > Reviewed-by: Corey Minyard <cminyard@mvista.com>
> >
> > Are you planning to push this, or do you want me to take it?  If you
> > want me to take it, what is the urgency?
> 
>  Thanks. Well, not hurry, as long as it goes into 5.9 with all other
> changes.

Ok, this is queued in my for-next branch.

-corey

> 
> 
> >
> > -corey
> >
> > > ---
> > >  drivers/char/ipmi/ipmi_msghandler.c | 13 ++++++-------
> > >  1 file changed, 6 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> > > index 737c0b6b24ea..e1814b6a1225 100644
> > > --- a/drivers/char/ipmi/ipmi_msghandler.c
> > > +++ b/drivers/char/ipmi/ipmi_msghandler.c
> > > @@ -39,7 +39,7 @@
> > >
> > >  static struct ipmi_recv_msg *ipmi_alloc_recv_msg(void);
> > >  static int ipmi_init_msghandler(void);
> > > -static void smi_recv_tasklet(unsigned long);
> > > +static void smi_recv_tasklet(struct tasklet_struct *t);
> > >  static void handle_new_recv_msgs(struct ipmi_smi *intf);
> > >  static void need_waiter(struct ipmi_smi *intf);
> > >  static int handle_one_recv_msg(struct ipmi_smi *intf,
> > > @@ -3430,9 +3430,8 @@ int ipmi_add_smi(struct module         *owner,
> > >       intf->curr_seq = 0;
> > >       spin_lock_init(&intf->waiting_rcv_msgs_lock);
> > >       INIT_LIST_HEAD(&intf->waiting_rcv_msgs);
> > > -     tasklet_init(&intf->recv_tasklet,
> > > -                  smi_recv_tasklet,
> > > -                  (unsigned long) intf);
> > > +     tasklet_setup(&intf->recv_tasklet,
> > > +                  smi_recv_tasklet);
> > >       atomic_set(&intf->watchdog_pretimeouts_to_deliver, 0);
> > >       spin_lock_init(&intf->xmit_msgs_lock);
> > >       INIT_LIST_HEAD(&intf->xmit_msgs);
> > > @@ -4467,10 +4466,10 @@ static void handle_new_recv_msgs(struct ipmi_smi *intf)
> > >       }
> > >  }
> > >
> > > -static void smi_recv_tasklet(unsigned long val)
> > > +static void smi_recv_tasklet(struct tasklet_struct *t)
> > >  {
> > >       unsigned long flags = 0; /* keep us warning-free. */
> > > -     struct ipmi_smi *intf = (struct ipmi_smi *) val;
> > > +     struct ipmi_smi *intf = from_tasklet(intf, t, recv_tasklet);
> > >       int run_to_completion = intf->run_to_completion;
> > >       struct ipmi_smi_msg *newmsg = NULL;
> > >
> > > @@ -4542,7 +4541,7 @@ void ipmi_smi_msg_received(struct ipmi_smi *intf,
> > >               spin_unlock_irqrestore(&intf->xmit_msgs_lock, flags);
> > >
> > >       if (run_to_completion)
> > > -             smi_recv_tasklet((unsigned long) intf);
> > > +             smi_recv_tasklet(&intf->recv_tasklet);
> > >       else
> > >               tasklet_schedule(&intf->recv_tasklet);
> > >  }
> > > --
> > > 2.17.1
> > >
> 
> 
> 
> -- 
>        - Allen


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
