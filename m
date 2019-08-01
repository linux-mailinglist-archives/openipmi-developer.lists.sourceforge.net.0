Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 575247E13C
	for <lists+openipmi-developer@lfdr.de>; Thu,  1 Aug 2019 19:40:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1htF3n-0005fv-9U; Thu, 01 Aug 2019 17:40:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1htF3l-0005fk-LZ
 for openipmi-developer@lists.sourceforge.net; Thu, 01 Aug 2019 17:40:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CV5KJuMKRvWixx4ezJXBxyoNVGaMRk943Xwor61oWZ0=; b=I33T32bFRYvKxm/fe1rPuOmV8P
 zqURVdKPqBZHh/6YBDL2ydwCshoGbXJ1SLJscW40LanuYnKxv2DMGfD2vDbQqFcFyUz77o6yfgWd4
 AYA8vctYp+tp1H/91jzbJ78wfvjIYLZfQ0VNhYlVuhbjlGnTOOvGvaqVZD7/8Wssos8k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CV5KJuMKRvWixx4ezJXBxyoNVGaMRk943Xwor61oWZ0=; b=M9nUse5hyRRlNQAiAtCQS/7APU
 vEe8YZSPeGpDuZO/JU6H+95gKHBRDz5NyeqU+klUr8I5AjA5/BvKF85bA84/EYd7CAwF7eUWY5wyc
 k+oR5+aaYGytMj5/igRSNd8G+KOVfKASTvS1zywa6OqgsLshNG8LaTVVlOkjoGhE0eHA=;
Received: from mail-pf1-f179.google.com ([209.85.210.179])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1htF3k-005zGv-44
 for openipmi-developer@lists.sourceforge.net; Thu, 01 Aug 2019 17:40:13 +0000
Received: by mail-pf1-f179.google.com with SMTP id b13so34480029pfo.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 01 Aug 2019 10:40:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CV5KJuMKRvWixx4ezJXBxyoNVGaMRk943Xwor61oWZ0=;
 b=GbP1WOn7/9PbIdwzkuN3chiaHFkVcDH4NKdncXl3s7kSJdiV0EEUoJZC2VqgFk60VL
 Yov+7ppDp+2EHRdy1Lm951VSrXGW4vAim5laato1MVSD0uv0DAdp/psPC/BHwey0vLJh
 bzese9evswLR5zaJ/OoTR2rVvExaDbATR/q+Q+tyySHqyS3m8XVF7/dvrzhXeU4EvTp+
 p87YTxAEHBgktCoCuDblWGazQ7iy/PKCt3NkfQN5WUcemvyhOJxlUKBYhC3aD+PLkBA+
 nBI12Flko+joy8/C0UMWYycemDIGK4P9JBLCfK6mUMgOHlZWoLtVAakH7NjaHzbpIzDu
 yMmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=CV5KJuMKRvWixx4ezJXBxyoNVGaMRk943Xwor61oWZ0=;
 b=L+Wm7/ZgYiwZab0qY0geTHN2dvp9uqvGM6bLEXQ4QisswrzZzCI2xBw2M0eyoTWNM4
 dPPPtVoQH22SG2rnHzaTH7QW0x+6Gjy77O6goqTodb40QSI39i8jIqL74mJgM9qswqVJ
 Shksm741851RAdBFBWHpd5Pxonc3+gzhzMSei9wOmogSPE6dhyLRkP5xH+zAeYL/d8Qz
 j9lcNbQcMBUXHEr3S3wVMUqxu1JDfBZvPx179rEFb2JZwrxPo2qCNY1TbQvJ+Xv/HTno
 1wx1r4SxqAW9ptzUkfnxcfBxSb19TlbqHZW7vLRYbETClogtbvagxhO0LWZIywm7bJVO
 f1Dw==
X-Gm-Message-State: APjAAAUwUS/FS/saLuzLial27b7Ck5B4SvlTMWuH8bGk077Qg3tpGfPu
 /3kbUZhjDepkmF3IV1MV/A==
X-Google-Smtp-Source: APXvYqyaoMJ8U5sAG1dzNMGShf6YvDYPBBsDeYcG2HtyD3zlzFDQ0i1obCTsJ8125fdPc2XwL2U9KQ==
X-Received: by 2002:aa7:8e17:: with SMTP id c23mr55055415pfr.227.1564681205765; 
 Thu, 01 Aug 2019 10:40:05 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id j12sm63983783pff.4.2019.08.01.10.40.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 10:40:05 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:7163:ab94:3829:eba3])
 by serve.minyard.net (Postfix) with ESMTPSA id AB2B3180039;
 Thu,  1 Aug 2019 17:40:03 +0000 (UTC)
Date: Thu, 1 Aug 2019 12:40:02 -0500
From: Corey Minyard <minyard@acm.org>
To: Tejun Heo <tj@kernel.org>
Message-ID: <20190801174002.GC5001@minyard.net>
References: <20190709210643.GJ657710@devbig004.ftw2.facebook.com>
 <20190709214602.GD19430@minyard.net>
 <20190709220908.GL657710@devbig004.ftw2.facebook.com>
 <20190709230144.GE19430@minyard.net>
 <20190710142221.GO657710@devbig004.ftw2.facebook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710142221.GO657710@devbig004.ftw2.facebook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.179 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.179 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1htF3k-005zGv-44
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

On Wed, Jul 10, 2019 at 07:22:21AM -0700, Tejun Heo wrote:
> Hello,
> 
> On Tue, Jul 09, 2019 at 06:01:44PM -0500, Corey Minyard wrote:
> > > I'm really not sure "carefully tuned" is applicable on indefinite busy
> > > looping.
> > 
> > Well, yeah, but other things were tried and this was the only thing
> > we could find that worked.  That was before the kind of SMP stuff
> > we have now, though.
> 
> I see.
> 
> > > We can go for shorter timeouts for sure but I don't think this sort of
> > > busy looping is acceptable.  Is your position that this must be a busy
> > > loop?
> > 
> > Well, no.  I want something that provides as high a throughput as
> > possible and doesn't cause scheduling issues.  But that may not be
> > possible.  Screwing up the scheduler is a lot worse than slow IPMI
> > firmware updates.
> > 
> > How short can the timeouts be and avoid issues?
> 
> We first tried msleep(1) and that was too slow even for sensor reading
> making it take longer than 50s.  With the 100us-200us sleep, it got
> down to ~5s which was good enough for our use case and the cpu /
> scheduler impact was still mostly negligible.  I can't tell for sure
> without testing but going significantly below 100us is likely to
> become visible pretty quickly.

I spent some time looking at this.  Without the patch, I
measured around 3.5ms to send/receive a get device ID message
and uses 100% of the CPU on a core.

I measured your patch, it slowed it down to around 10.5ms
per message, which is not good.  Though it did just use a
few percent of the core.

I wrote some code to auto-adjust the timer.  It settled on
a delay around 35us, which gave 4.7ms per message, which is
probably acceptable, and used around 40% of the CPU.  If
I use any timeout (even a 0-10us range) it won't go below
4ms per message.

The process is running at nice 19 priority, so it won't
have a significant effect on other processes from a priority
point of view.  It may still be hitting the scheduler locks
pretty hard, though.  But I played with things quite a bit
and the behavior or the management controller is too
erratic to set a really good timeout.  Maybe other ones
are better, don't know.

One other option we have is that the driver has something
called "maintenance mode".  If it detect that you have
reset the management controller or are issuing firmware
commands, it will modify timeout behavior.  It can also
be activated manually.  I could also make it switch to
just calling schedule instead of delaying when in that
mode.

The right thing it do is complain bitterly to vendors who
build hardware that has to be polled.  But besides that,
I'm thinking the maintenance mode is the thing to do.
It will also change behavior if you reset the management
controller, but only for 30 seconds or so.  Does that
work?

-corey

> 
> We can also take a hybrid approach where we busy poll w/ 1us udelay
> upto, say, fifty times and then switch to sleeping poll.
> 
> Are there some tests which can be used to verify the cases which may
> get impacted by these changes?
> 
> Thanks.
> 
> -- 
> tejun


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
