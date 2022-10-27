Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BE61B60FBCB
	for <lists+openipmi-developer@lfdr.de>; Thu, 27 Oct 2022 17:23:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oo4im-0000Re-9E;
	Thu, 27 Oct 2022 15:23:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1oo4il-0000RY-IO
 for openipmi-developer@lists.sourceforge.net;
 Thu, 27 Oct 2022 15:23:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Hu8teaCMlPYTjOnrG0NiGe0Q3Jj8nxpIHrZvb7hsUZY=; b=CXyA1Bf3LeClcwUlSd9Kozsmy+
 EwRroryJTm5spiy9DuXOrPOkyU1JTj9CSVUhMxSpT1vsN++lKPvSdQR4K0pCpiZP6dparPskOk098
 qDLaQkVLTvAFpahK11F6rIi01pVnEPGdbyg++HEUILKwzGcZgkfN3nPy+qpkbmXq3UqE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Hu8teaCMlPYTjOnrG0NiGe0Q3Jj8nxpIHrZvb7hsUZY=; b=UwpaczmO++HzVyOjgwxLJcO+QN
 bI9W43NM8WRfyo9isRaSYeRTZmzqQU9lSt+MP7KdxsJE7nevYGI34q2V48SPjw59VBzRg0jRMXSPN
 IfjzDiTzeESU6TA10Y7GrbreHfB6R47r8BIqb9XZmBLNGgTVBr1oNeVEIAwKb7vEpJTY=;
Received: from mail-qv1-f43.google.com ([209.85.219.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oo4ik-00241U-N1 for openipmi-developer@lists.sourceforge.net;
 Thu, 27 Oct 2022 15:23:03 +0000
Received: by mail-qv1-f43.google.com with SMTP id h10so1588763qvq.7
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 27 Oct 2022 08:23:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Hu8teaCMlPYTjOnrG0NiGe0Q3Jj8nxpIHrZvb7hsUZY=;
 b=NAxKMS8me1V4RbzOLdYqMcn0/WLx8xABPe3sRwtPTAt3neyoYKPTBrotl26e9jJfNj
 OReLFvlVgXr3NWH1gxgUsU/Pkq2JQTXVdpLX+6DTLiGFVeQzfIaoDMXCEqpOC5UgHvox
 1f463fK37nOqbDmbxRE+//ji9Wqpy4TTAZOFFpXur+6IgWa4H9azXAInbjKtnb944Pu3
 RuDgBfm4Xw+gdvYr+NnsAaTBDHG2CWsqxK5+vhrJTCfdTQh/JeSkLc4wEvAzC572CEv0
 p2r5Rh6CsUcr1JuKo9LHveMQ+Dd/zpWsItcr5n32/HjhcbadTexu6kQMHqltnZ/gCty0
 MODQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:to:from:date:sender:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=Hu8teaCMlPYTjOnrG0NiGe0Q3Jj8nxpIHrZvb7hsUZY=;
 b=veUCCin+YGnXVWJ0uy1g50MKry0d/9A7ErGcsUPewqKmNh52691Q2pSCfOpK3lM3ag
 5hFdyBZ6xQUxz/wVlAC9h7yRz/Ww/baxF6CDFpcg1temD/H8enGoR/nJRUp1YN6GZ1VX
 Qoxl790nHeLQLiLfcHE0kqGXn+IwoxGb2pm7hd96UmnicLo+8O+uiZbygUq+ZbuhVPW3
 y92odKQn4mXz7PLT3f5ZyJYfZmsrGQWF8XNycV4KsMAbY7ZgzsHtt9pLpQhjjpOZ2hqR
 0LGs4oBA6qEHlgUmY1OnfpqtMxWYlk5jwnzTue9ennc20uGGlvDJ+5S0MHJFvVggsU2M
 425w==
X-Gm-Message-State: ACrzQf1ISefO7nRY1bk21I/lb6fxdz+AgppxMgKmU7jrGl6Bh4iOveTz
 9BYkcvw5WH8UpG8yFOUcoA==
X-Google-Smtp-Source: AMsMyM7z8odXC+oerCw4Hn3frKFCNHqLivZ/LAQX9TvC5UEUiQ8d+cALNG27lPFFRRWqq6GCXAYWyQ==
X-Received: by 2002:ad4:5c8c:0:b0:4b9:436:de75 with SMTP id
 o12-20020ad45c8c000000b004b90436de75mr32203291qvh.73.1666884176825; 
 Thu, 27 Oct 2022 08:22:56 -0700 (PDT)
Received: from serve.minyard.net ([47.184.147.45])
 by smtp.gmail.com with ESMTPSA id
 n16-20020ac85a10000000b0039cc82a319asm997273qta.76.2022.10.27.08.22.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Oct 2022 08:22:56 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:2cd9:e696:a60f:3003])
 by serve.minyard.net (Postfix) with ESMTPSA id 342EC1800BD;
 Thu, 27 Oct 2022 15:22:55 +0000 (UTC)
Date: Thu, 27 Oct 2022 10:22:54 -0500
From: Corey Minyard <minyard@acm.org>
To: Steven Rostedt <rostedt@goodmis.org>, linux-kernel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Stephen Boyd <sboyd@kernel.org>, Guenter Roeck <linux@roeck-us.net>,
 openipmi-developer@lists.sourceforge.net
Message-ID: <Y1qiTjLWG8u2eDPh@minyard.net>
References: <20221027150525.753064657@goodmis.org>
 <20221027150926.969147187@goodmis.org>
 <Y1qhrqfF87gnyiCE@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y1qhrqfF87gnyiCE@minyard.net>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Oct 27, 2022 at 10:20:15AM -0500,
 Corey Minyard wrote:
 > On Thu, Oct 27, 2022 at 11:05:35AM -0400, Steven Rostedt wrote: > > From:
 "Steven Rostedt (Google)" <rostedt@goodmis.org> > > > > Befor [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.43 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.43 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1oo4ik-00241U-N1
Subject: Re: [Openipmi-developer] [RFC][PATCH v2 10/31] timers: ipmi: Use
 del_timer_shutdown() before freeing timer
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Oct 27, 2022 at 10:20:15AM -0500, Corey Minyard wrote:
> On Thu, Oct 27, 2022 at 11:05:35AM -0400, Steven Rostedt wrote:
> > From: "Steven Rostedt (Google)" <rostedt@goodmis.org>
> > 
> > Before a timer is freed, del_timer_shutdown() must be called.
> 
> Thanks, this is in my queue, or:
> 
> Acked-by: Corey Minyard <cminyard@mvista.com>
> 
> if you prefer that.

Well, del_timer_shutdown() isn't there yet, so I guess the Ack is what
you need.

-corey

> 
> -corey
> 
> > 
> > Link: https://lore.kernel.org/all/20220407161745.7d6754b3@gandalf.local.home/
> > 
> > Cc: Corey Minyard <minyard@acm.org>
> > Cc: openipmi-developer@lists.sourceforge.net
> > Signed-off-by: Steven Rostedt (Google) <rostedt@goodmis.org>
> > ---
> >  drivers/char/ipmi/ipmi_msghandler.c | 2 +-
> >  drivers/char/ipmi/ipmi_ssif.c       | 4 ++--
> >  2 files changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> > index 49a1707693c9..b577f66f3ca6 100644
> > --- a/drivers/char/ipmi/ipmi_msghandler.c
> > +++ b/drivers/char/ipmi/ipmi_msghandler.c
> > @@ -5540,7 +5540,7 @@ static void __exit cleanup_ipmi(void)
> >  		 * here.
> >  		 */
> >  		atomic_set(&stop_operation, 1);
> > -		del_timer_sync(&ipmi_timer);
> > +		del_timer_shutdown(&ipmi_timer);
> >  
> >  		initialized = false;
> >  
> > diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> > index e1072809fe31..bb4df879a5ab 100644
> > --- a/drivers/char/ipmi/ipmi_ssif.c
> > +++ b/drivers/char/ipmi/ipmi_ssif.c
> > @@ -1273,8 +1273,8 @@ static void shutdown_ssif(void *send_info)
> >  		schedule_timeout(1);
> >  
> >  	ssif_info->stopping = true;
> > -	del_timer_sync(&ssif_info->watch_timer);
> > -	del_timer_sync(&ssif_info->retry_timer);
> > +	del_timer_shutdown(&ssif_info->watch_timer);
> > +	del_timer_shutdown(&ssif_info->retry_timer);
> >  	if (ssif_info->thread) {
> >  		complete(&ssif_info->wake_thread);
> >  		kthread_stop(ssif_info->thread);
> > -- 
> > 2.35.1


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
