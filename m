Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C26BC16B2
	for <lists+openipmi-developer@lfdr.de>; Tue, 07 Oct 2025 14:56:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J5RwaexnqTXYqNAFAAUK/kP0sOGyHijQtD2b9v0Zd1s=; b=nImLoZBWttxoyzfTB3KsbGSOmr
	+hBqufX5EXHpPJcobhe/Or/bVZ4w+oUaqiQj28fMGgr3ACHHwDi60Aezi4o4BBF7JBS8qsMT3pjhq
	FVRPFwSzLCIoVmVr4xgpNNPzrf7/mWghr8wNDM0uQGmCXZyLeSPXw4BUdIK+9JvWEuqY=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1v67EM-0004XE-E0;
	Tue, 07 Oct 2025 12:55:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1v67EK-0004X6-Sl
 for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Oct 2025 12:55:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xbRRcOj1nqIqPJK13rY453aAP4zXT3vzbj3Cks+QjB4=; b=B7+1q9XGGMHFVyi8fMabYA0yMO
 yqptaTuYLhGNg0sZKEuyz/8GXwKfXBLL09c3SMszYsj6wYiBOe3vluK2cCANJWiIpD580sMaerdW2
 qAuZ4Ef1bGkpVkEmVEmSxzt4D2p2FuH12ADHITVMf6CO0NIbn4FmgGr4wcY7YnMxbzhI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xbRRcOj1nqIqPJK13rY453aAP4zXT3vzbj3Cks+QjB4=; b=BQwLZu0BNnNIdR907c3IYH/GHS
 hPMeKnQrKHtyPNM+T4f7lT2nwLb2f0qxbsU03LPU3+MKTyOSDV4Ze3ZA5AJjbSKjoJaHUWUcC6+Hz
 ChUScPAUQhIyTZt+9b0JK5cgsIJ8zdrek+7QBhH269VeqziuB3BJU68gxiJK5VHoGO5U=;
Received: from mail-vk1-f176.google.com ([209.85.221.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v67EK-00064u-9b for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Oct 2025 12:55:48 +0000
Received: by mail-vk1-f176.google.com with SMTP id
 71dfb90a1353d-54c0bac7d6bso2466446e0c.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 07 Oct 2025 05:55:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1759841737; x=1760446537;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
 :reply-to; bh=xbRRcOj1nqIqPJK13rY453aAP4zXT3vzbj3Cks+QjB4=;
 b=MldyzC86v9eVT2F2btwmiB0jsPGQP9KXuitRhJyQiARhVGvvVyGaphiPlmiF9cUrfi
 waNDH90Z+pDTfY28tsWqZVWMnBhSMoj8CIj6e2/ShHb1YfydObYB1agtkuYRGgqHcxL+
 n7CQWuTJ5sdWebs0UKEEntejPC5VBEz6gnr8/PQesvK5/CXN7npWiVrBD8+epM3HHB5K
 MSYxi0HZP3XZYD0fIfPRD+UgCqeBpYgfTZzUt6L79V5hu4QjQSfteqocy4OZvJRG3pU0
 wDWuibNokcdH0lBDKnmdx3wgVhEgXm6hd5ofkV5XfFpDHwqJI2vj6Ps6NgTTpevUsK7E
 C2wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1759841737; x=1760446537;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=xbRRcOj1nqIqPJK13rY453aAP4zXT3vzbj3Cks+QjB4=;
 b=ujr8sb8WeRmvCsajYqFdigSfqUKgicyg6VUgGpQdLlWYhZxm/+Y/0mFsZ3m2jUH6Br
 7FctHOH6KxhwqO2w7/NF/Eg31+diwe5AcZUTYUOUFbBsphsmn4Zsk5VJoYnvX7u04gM/
 yoq6AprR0qFSnMxBXVNshWuEMdlXptn/TtubQa6n3tVddlFSl81f4uHr/YZld3tUrnna
 a9Fu2q+nHv6T5lI3NOWd1bjirgMEuxfcCmvTZTM65pmMijC7CAtV0DzFfGKjYnPMToyT
 0+OwdDa+1cnyZrpMTB6qdeOGLT7rlzhUXPzu2N6NNU4vKiBf8215QOy5hCtGEshsuPhw
 3hOg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXZtw/elIaF0dhB45PR3/PzbaFid3/GAkK29chsar/8WHN7iBX9tgFoWg4jErPac2lak4+40YsRlCZWAA5D1SipE3U=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YznDcQ7jR0ZlLY45GsVgvJV7Nvkd0Sh0d2nz4tIrpEvyOiUc3Sy
 /qvCDLCQfuc7NM16pGkIZ2mcQMDT4MBw3Xdb3dvs2q5U4HeDW1dJiAKxGdu90Yg4aaruWRlKrAX
 oa6R4mIHOyw==
X-Gm-Gg: ASbGnctW4SSdOx16VOXQa2siwJHHOBU8g1r2FAlRiO86wgP+9WlVdcMKK4Rad30KZSE
 SLJ2RzwLLzDcURePPgMEGE/hrlzDNeG29AIUz89Wq693SpZvVM2XrQmbPvaqfu4LmOMEZpaZcl7
 KJRTF4p24ZMZkF5mIdLuBL/N6/wloH409j5WKdT4G8soLQEmpQ0B8Ot1BtEQ2z2PGXtIUENA9wC
 4qSDHDI3wmxRIBo91SnPUaWm1fSyeFkb9aF+rBnkPC8yqIulX6bemXwdj5+iIDSLLKv5tJxFq9Y
 FiWYVtv2BJXY/nfRYnMwGPScAfFDHKdwPcbs/o8+m7+I7As64/Oa/Oz3lWpqa7+H5PcRzIS3k71
 d0BXR26/+R3bJ2JYXiFpO5fjLnEl+2b5AMU0FnYcNKw1OgQo8OMMPPvYdkENV
X-Google-Smtp-Source: AGHT+IEbnElK0cs1/OpdY6EalgLuet0IqHCzk7jU16XFrsS/LpBSpxDz65Oh4Sj8sYpV1NQZHV0mdQ==
X-Received: by 2002:a05:6808:22a6:b0:43f:42d4:acd2 with SMTP id
 5614622812f47-43fc18a28d0mr7966900b6e.51.1759837610919; 
 Tue, 07 Oct 2025 04:46:50 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:52ef:e8e2:6979:b8d1])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-43fb24146a9sm3527847b6e.1.2025.10.07.04.46.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Oct 2025 04:46:49 -0700 (PDT)
Date: Tue, 7 Oct 2025 06:46:43 -0500
From: Corey Minyard <corey@minyard.net>
To: Guenter Roeck <linux@roeck-us.net>,
 openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Greg Thelen <gthelen@google.com>
Message-ID: <aOT9o-IkilgQXktF@mail.minyard.net>
References: <20251006201857.3433837-1-linux@roeck-us.net>
 <aOT9c1ULJolUHPSA@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aOT9c1ULJolUHPSA@mail.minyard.net>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Oct 07, 2025 at 06:46:01AM -0500,
 Corey Minyard wrote:
 > On Mon, Oct 06, 2025 at 01:18:57PM -0700, Guenter Roeck wrote: > > Prior
 to commit b52da4054ee0 ("ipmi: Rework user message limit handl [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.176 listed in wl.mailspike.net]
X-Headers-End: 1v67EK-00064u-9b
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Fix handling of messages
 with provided receive message pointer
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
Reply-To: corey@minyard.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Oct 07, 2025 at 06:46:01AM -0500, Corey Minyard wrote:
> On Mon, Oct 06, 2025 at 01:18:57PM -0700, Guenter Roeck wrote:
> > Prior to commit b52da4054ee0 ("ipmi: Rework user message limit handling"),
> > i_ipmi_request() used to increase the user reference counter if the receive
> > message is provided by the caller of IPMI API functions. This is no longer
> > the case. However, ipmi_free_recv_msg() is still called and decreases the
> > reference counter. This results in the reference counter reaching zero,
> > the user data pointer is released, and all kinds of interesting crashes are
> > seen.
> > 
> > Fix the problem by increasing user reference counter if the receive message
> > has been provided by the caller.
> 
> Yes, the only interface that uses this that would matter is the watchdog
> timer, which my tests don't currently cover.  I guess I need to add some
> tests.
> 
> Sorry, and thanks for the fix.  It's queued for next release.

Sorry, it's queued for this release, 6.18.  I'll send it to Linus
in a few days.

-corey

> 
> -corey
> 
> > 
> > Fixes: b52da4054ee0 ("ipmi: Rework user message limit handling")
> > Reported-by: Eric Dumazet <edumazet@google.com>
> > Cc: Eric Dumazet <edumazet@google.com>
> > Cc: Greg Thelen <gthelen@google.com>
> > Signed-off-by: Guenter Roeck <linux@roeck-us.net>
> > ---
> >  drivers/char/ipmi/ipmi_msghandler.c | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> > index a0b67a35a5f0..3700ab4eba3e 100644
> > --- a/drivers/char/ipmi/ipmi_msghandler.c
> > +++ b/drivers/char/ipmi/ipmi_msghandler.c
> > @@ -2301,8 +2301,11 @@ static int i_ipmi_request(struct ipmi_user     *user,
> >  	if (supplied_recv) {
> >  		recv_msg = supplied_recv;
> >  		recv_msg->user = user;
> > -		if (user)
> > +		if (user) {
> >  			atomic_inc(&user->nr_msgs);
> > +			/* The put happens when the message is freed. */
> > +			kref_get(&user->refcount);
> > +		}
> >  	} else {
> >  		recv_msg = ipmi_alloc_recv_msg(user);
> >  		if (IS_ERR(recv_msg))
> > -- 
> > 2.45.2
> > 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
