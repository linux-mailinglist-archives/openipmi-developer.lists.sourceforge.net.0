Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B0449826B9
	for <lists+openipmi-developer@lfdr.de>; Mon,  5 Aug 2019 23:18:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hukNF-0003tu-NH; Mon, 05 Aug 2019 21:18:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1hukND-0003ta-GF
 for openipmi-developer@lists.sourceforge.net; Mon, 05 Aug 2019 21:18:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Quv5LKbs49OA0A7kUkrESPHUpmixy0uCyhJoYZPtdP4=; b=ETOUfFbVnhO6CdRwG7WuGTonCI
 /p50Z2yNNMqZaVy8e3ABcuGk1BHm4wsl1GlxEEIXidLXG6tFhp6ICRSIrEY5vaEJ7MbyhA9dmVqo9
 NCmrBajGWLDZxC/LxSWXXkM5y4cMQIpV34f5ySkqcRsmLTDabxJFsSiv2vKXZkdCbqUs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Quv5LKbs49OA0A7kUkrESPHUpmixy0uCyhJoYZPtdP4=; b=eh9CQmit6OTaeLiaIrR3xoTwj2
 fMCwK5NavLsYS4mD0WEuz792lcvz2L0l7i1BZp3O/cN1Ht0AY19uWP80fvFUGBaRzBuT2z28a3FuH
 kjbpDyEReJIeCyHyVAMY6MT35KolHgutGZk4R2YbJEPrAFVQzozK60CgLNP2FY1g7veQ=;
Received: from mail-oi1-f176.google.com ([209.85.167.176])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hukNC-00C7lf-2Y
 for openipmi-developer@lists.sourceforge.net; Mon, 05 Aug 2019 21:18:31 +0000
Received: by mail-oi1-f176.google.com with SMTP id c15so8028773oic.3
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 05 Aug 2019 14:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Quv5LKbs49OA0A7kUkrESPHUpmixy0uCyhJoYZPtdP4=;
 b=Ef/4gIpz8Estc4b2dD1u9XsH48FqtGNZcuSUKZu6Go6rAtTAAwWYccI8oKPC/WeJ9s
 eysXbXa5OjK92WFBIdmQOFtQvHIJGzoKD57djmO5UaLJxjlxMp6Car2c12JLfpa34aZN
 1Q6ieMCMAte89kX+rw6vzaT6YfO+GF9EZBdMse9zBu8zsuy5dU5aNtdjaZC6gbPBtE39
 OrqyKgioDnWIl5vFaHtViPMuxeiJxdx5IYMb1sPP90jo1ue+CQsVIW2Q00EQppIKoa/I
 9LJnItZ7EHKdOtSwtstrd/EJ35SOTuQ42F0ThDXr5eT4KHpYYhohWvO32EO2xXdtrMrq
 y3lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=Quv5LKbs49OA0A7kUkrESPHUpmixy0uCyhJoYZPtdP4=;
 b=jrmoQ0YJ49n/2ODrI0Pue0WbHdLdDLhipCEg/X8F9TB6OAUG2VcIbQzyD2w7TDcLZo
 uhMeykuWgIqIGxinAKGc1V1BKzTaJXSmPlynk1VQlsyjFSAL7N4bmpXqExZTH8JsCLAa
 Pz4RMhEibIsDeiw2vpWtxRcGWxkKO0AKA2BcZGMZkez98iGHGLePOUrTPWpiRN8lMt/r
 dmXK9u6Z/BK5WMYtEz7LL9U9m2RdChghvm2Y8N0JpeBHsKx+jVTA/61J0bYFuOpYcnyq
 HyuXGiT7PobRhAB3dnK07mNb6OCmzI4ASJGJu46W1weP+PfKOWkyL8GdEnZhW0PkCQwB
 0/jw==
X-Gm-Message-State: APjAAAWHlpIbWGGmcCkDRd4Gq/UqyfzeihCgDUgHtb45JIbOiWuXCFYH
 bkrhh7GezQBu9nP/8EEU0Q==
X-Google-Smtp-Source: APXvYqx6jU8h4cOhrS0fGYgjYoVtMAHXM3guXHC1cBcm4h7gVHA3pxgSsuez4bR3WHgjD/Auu/IoRw==
X-Received: by 2002:aca:bb45:: with SMTP id l66mr291841oif.108.1565039903877; 
 Mon, 05 Aug 2019 14:18:23 -0700 (PDT)
Received: from serve.minyard.net ([47.184.134.43])
 by smtp.gmail.com with ESMTPSA id c21sm27381174oib.4.2019.08.05.14.18.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 14:18:23 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:395d:f792:3095:bcc7])
 by serve.minyard.net (Postfix) with ESMTPSA id A12A81800D1;
 Mon,  5 Aug 2019 21:18:22 +0000 (UTC)
Date: Mon, 5 Aug 2019 16:18:21 -0500
From: Corey Minyard <minyard@acm.org>
To: Tejun Heo <tj@kernel.org>
Message-ID: <20190805211821.GG5001@minyard.net>
References: <20190709210643.GJ657710@devbig004.ftw2.facebook.com>
 <20190709214602.GD19430@minyard.net>
 <20190709220908.GL657710@devbig004.ftw2.facebook.com>
 <20190709230144.GE19430@minyard.net>
 <20190710142221.GO657710@devbig004.ftw2.facebook.com>
 <20190801174002.GC5001@minyard.net>
 <20190805181850.GI136335@devbig004.ftw2.facebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805181850.GI136335@devbig004.ftw2.facebook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.176 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hukNC-00C7lf-2Y
Subject: Re: [Openipmi-developer] [PATCH] ipmi_si_intf: use usleep_range()
 instead of busy looping
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
Cc: openipmi-developer@lists.sourceforge.net, kernel-team@fb.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Aug 05, 2019 at 11:18:50AM -0700, Tejun Heo wrote:
> Hello, Corey.
> 
> On Thu, Aug 01, 2019 at 12:40:02PM -0500, Corey Minyard wrote:
> > I spent some time looking at this.  Without the patch, I
> > measured around 3.5ms to send/receive a get device ID message
> > and uses 100% of the CPU on a core.
> > 
> > I measured your patch, it slowed it down to around 10.5ms
> > per message, which is not good.  Though it did just use a
> > few percent of the core.
> > 
> > I wrote some code to auto-adjust the timer.  It settled on
> > a delay around 35us, which gave 4.7ms per message, which is
> > probably acceptable, and used around 40% of the CPU.  If
> > I use any timeout (even a 0-10us range) it won't go below
> > 4ms per message.
> 
> Out of curiosity, what makes 4.7ms okay and 10.5ms not?  At least for
> the use case we have in the fleet (sensor reading mostly), the less
> disruptive the better as long as things don't timeout and fail.

Well, when you are loading firmware and it takes 10 minutes at
max speed, taking 20-30 minutes is a lot worse.  It's not reading
sensors, which would be fine, it's tranferring large chunks of
data.

> 
> > The process is running at nice 19 priority, so it won't
> > have a significant effect on other processes from a priority
> > point of view.  It may still be hitting the scheduler locks
> > pretty hard, though.  But I played with things quite a bit
> 
> And power.  Imagine multi six digit number of machines burning a full
> core just because of this busy loop to read temperature sensors some
> msecs faster.
> 
> > and the behavior or the management controller is too
> > erratic to set a really good timeout.  Maybe other ones
> > are better, don't know.
> > 
> > One other option we have is that the driver has something
> > called "maintenance mode".  If it detect that you have
> > reset the management controller or are issuing firmware
> > commands, it will modify timeout behavior.  It can also
> > be activated manually.  I could also make it switch to
> > just calling schedule instead of delaying when in that
> > mode.
> 
> Yeah, whatever which makes the common-case behavior avoid busy looping
> would work.

Ok, it's queued in linux-next now (and has been for a few days).
I'll get it into the next kernel release (and I just noticed
a spelling error and fixed it).

-corey

> 
> > The right thing it do is complain bitterly to vendors who
> > build hardware that has to be polled.  But besides that,
> 
> For sure, but there already are a lot of machines with this thing and
> it'll take multiple years for them to retire so...
> 
> > I'm thinking the maintenance mode is the thing to do.
> > It will also change behavior if you reset the management
> > controller, but only for 30 seconds or so.  Does that
> > work?
> 
> Yeah, sounds good to me.
> 
> Thnaks.
> 
> -- 
> tejun


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
