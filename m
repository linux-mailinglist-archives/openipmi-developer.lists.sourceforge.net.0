Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A09BA824C4
	for <lists+openipmi-developer@lfdr.de>; Mon,  5 Aug 2019 20:19:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1huhZZ-0007LP-H2; Mon, 05 Aug 2019 18:19:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <htejun@gmail.com>) id 1huhZZ-0007L2-4w
 for openipmi-developer@lists.sourceforge.net; Mon, 05 Aug 2019 18:19:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WaiMpJM6wmUrTlGb1M5WnJo1GmhESZg0oc856bSZaeI=; b=UVAkfZ99WVY24hQgRfDU16Hj55
 OlypldsLmmb8orJrjNlxvdkfOI8nAM+oLjJQp1FFyWJrwqzqFz7LbSaPh17/5nRmYAopfaKMZWzQu
 p/z2NreiRDmp4rz+NPlr+gRPbr03oXSpW2PLubZiBh3VkmNxpKFGHdIND78SKco4Gx5I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WaiMpJM6wmUrTlGb1M5WnJo1GmhESZg0oc856bSZaeI=; b=N9hl1MeirpbXwPPpSHwzLrTCUU
 UYVjOfN4gwgrRrYiO3wF8Ziuj6LscSqVRpLb5TDtMC0+fjSwOr6Y5c46VioQUiGSfyKanIP9Jgx+R
 nFIvk9NcCnopjothTYfKrUmydVbwiGeuTP41/rhJ6ux76PSuwWQkwXj1eGiaikc663I0=;
Received: from mail-qk1-f175.google.com ([209.85.222.175])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1huhZT-00BSR3-BZ
 for openipmi-developer@lists.sourceforge.net; Mon, 05 Aug 2019 18:19:04 +0000
Received: by mail-qk1-f175.google.com with SMTP id d79so60777646qke.11
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 05 Aug 2019 11:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=WaiMpJM6wmUrTlGb1M5WnJo1GmhESZg0oc856bSZaeI=;
 b=VhG2X0bjL7c7zyfuEQEH7WHjMT/El0t1r90O2Ygdv1S9Yp8rULuUqTO0TRE6eZkYH8
 c8J72/M4cbxh9au+cSSMCrMKlN8YMQEdgaDB3oViwzoe3R1WidRQPCizUcjVM2tzqV66
 33QWkPmb55QoUX2Geg+mVF0lGpDa8EK3Db6Ky4LcSxeb5lbbCRaP+lFHv0nYHtSMR3hC
 9pI9OtlClLGzXdhN4IZtZeuWr5PVw12MY9DGp8EjaEI85JDg4qHG1dUZmoUGX7ZZUNKu
 QQKZqG29mS5rtVx9Aevl7FiJo4oQ8aMh0eLYAzdZxo0ZJY+8WtcDATXkswJ7oSrz1aQz
 D+AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=WaiMpJM6wmUrTlGb1M5WnJo1GmhESZg0oc856bSZaeI=;
 b=IPwOiQH5X088kqqcdvdLb4Q7ZaM53R3ABrVmew6y+cr2RIwYnxY6noLACALN8G45Z0
 jhQWh20LF98gF4kV+GACiMxBJDCoXBzwR473c4JRP/lh0JVfWmbqpIYBTuRDI3qDQy/Z
 sxLehYHY1sOB3bD4Zo1bLkKsFua29kBrpR8RI91e+w0ZSeNn4O8ZiiGV8FjuijAlN7jD
 w3HRSDkuiyjB0aL8YFdzjCtatSlFWSdLWJF5ZzCpuyELK75xgNVb+L8CYxygy8OYcJ7S
 hLI0N4ndmNJGgNvQxGuezCnSf5I6R2KO09qz0onYeZMX4sZKTFnEpUsel3gzfv5sSpty
 6faQ==
X-Gm-Message-State: APjAAAWmGmtNOxxKVJlAbdXjbhBSldJ5enwDnoSNOz6Rqe0tedPpWF5n
 7Rja8Vc45fOvukMp7TV8ORE=
X-Google-Smtp-Source: APXvYqzjIA0DKIHR/Qh6C4C36/MpQFi9/z6kf8TgvCA6b67TRh+R/U2pGzyk/D7AjGDmNJXAXIc7aQ==
X-Received: by 2002:a37:61c3:: with SMTP id
 v186mr97547335qkb.158.1565029133207; 
 Mon, 05 Aug 2019 11:18:53 -0700 (PDT)
Received: from localhost ([2620:10d:c091:480::39f3])
 by smtp.gmail.com with ESMTPSA id l63sm35761964qkb.124.2019.08.05.11.18.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 11:18:52 -0700 (PDT)
Date: Mon, 5 Aug 2019 11:18:50 -0700
From: Tejun Heo <tj@kernel.org>
To: Corey Minyard <minyard@acm.org>
Message-ID: <20190805181850.GI136335@devbig004.ftw2.facebook.com>
References: <20190709210643.GJ657710@devbig004.ftw2.facebook.com>
 <20190709214602.GD19430@minyard.net>
 <20190709220908.GL657710@devbig004.ftw2.facebook.com>
 <20190709230144.GE19430@minyard.net>
 <20190710142221.GO657710@devbig004.ftw2.facebook.com>
 <20190801174002.GC5001@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801174002.GC5001@minyard.net>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (htejun[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.222.175 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -1.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1huhZT-00BSR3-BZ
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
Cc: openipmi-developer@lists.sourceforge.net, kernel-team@fb.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hello, Corey.

On Thu, Aug 01, 2019 at 12:40:02PM -0500, Corey Minyard wrote:
> I spent some time looking at this.  Without the patch, I
> measured around 3.5ms to send/receive a get device ID message
> and uses 100% of the CPU on a core.
> 
> I measured your patch, it slowed it down to around 10.5ms
> per message, which is not good.  Though it did just use a
> few percent of the core.
> 
> I wrote some code to auto-adjust the timer.  It settled on
> a delay around 35us, which gave 4.7ms per message, which is
> probably acceptable, and used around 40% of the CPU.  If
> I use any timeout (even a 0-10us range) it won't go below
> 4ms per message.

Out of curiosity, what makes 4.7ms okay and 10.5ms not?  At least for
the use case we have in the fleet (sensor reading mostly), the less
disruptive the better as long as things don't timeout and fail.

> The process is running at nice 19 priority, so it won't
> have a significant effect on other processes from a priority
> point of view.  It may still be hitting the scheduler locks
> pretty hard, though.  But I played with things quite a bit

And power.  Imagine multi six digit number of machines burning a full
core just because of this busy loop to read temperature sensors some
msecs faster.

> and the behavior or the management controller is too
> erratic to set a really good timeout.  Maybe other ones
> are better, don't know.
> 
> One other option we have is that the driver has something
> called "maintenance mode".  If it detect that you have
> reset the management controller or are issuing firmware
> commands, it will modify timeout behavior.  It can also
> be activated manually.  I could also make it switch to
> just calling schedule instead of delaying when in that
> mode.

Yeah, whatever which makes the common-case behavior avoid busy looping
would work.

> The right thing it do is complain bitterly to vendors who
> build hardware that has to be polled.  But besides that,

For sure, but there already are a lot of machines with this thing and
it'll take multiple years for them to retire so...

> I'm thinking the maintenance mode is the thing to do.
> It will also change behavior if you reset the management
> controller, but only for 30 seconds or so.  Does that
> work?

Yeah, sounds good to me.

Thnaks.

-- 
tejun


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
