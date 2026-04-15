Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OIKXCM2B32mcUQAAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Wed, 15 Apr 2026 14:17:17 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 545134042B5
	for <lists+openipmi-developer@lfdr.de>; Wed, 15 Apr 2026 14:17:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qhW6uJJWQt9I3ddptWOYb4cxgRybl4X2BVlzjcwlzDE=; b=VVupmqhE/DBNrYqH93AHFDArPo
	4i+sEXtditrc06aoStZHCiIivi6a05iilBpg2tywwqfd5ZXbiNG5WkpGHGCh5nl+1/3qsFnSQ8+Ed
	WIc2f+0Fo7A/yko41SlqIV/FoFvSdnUodN4ZulmnglVNJZ7fDkpZXeBnEYAax2cddoHU=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wCzB3-00089U-IP;
	Wed, 15 Apr 2026 12:17:05 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wCzB1-00089N-Ve
 for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Apr 2026 12:17:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WUC/0p3bO+38N4pEARQpFAg8Bixho7M7pABWIReJg/I=; b=bNbh1gWiDzX+dUFr/I6S8TgjLJ
 //l9+i9o5DnBk0mNMp04UWbQ9SIUzsflk5ioRVr2LesmOU7SD9D2pXpIq3TlW0vrH+BIKGdZOd3wQ
 W5CjUZkZPnyvzkoBbRoV+GMs3TQyaRxcIIMTt4A0PAE/1dwqX2TxnI/TLlV8eSoThVbk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=WUC/0p3bO+38N4pEARQpFAg8Bixho7M7pABWIReJg/I=; b=aMwDe6aBYfYS0Tw97ecmnZaRdi
 2xWBxEMQQ765iZEe28Uerma76UO4JA/p3rtY0lceb6NkVZufjCfl+G9Dop2aZNOYvOK+GdJu3ZPV3
 BqRXCSqJ0IRKiFL8r3t3iHpK5fryzvxvV8mixRTImQMP/UNhmyeysonUVfhIUMU2Mz7o=;
Received: from mail-ot1-f53.google.com ([209.85.210.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wCzB1-0001pi-Hg for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Apr 2026 12:17:03 +0000
Received: by mail-ot1-f53.google.com with SMTP id
 46e09a7af769-7dbce74e537so5215094a34.1
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 15 Apr 2026 05:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1776255418; x=1776860218; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=WUC/0p3bO+38N4pEARQpFAg8Bixho7M7pABWIReJg/I=;
 b=XDRKMe5tTgzksqOrAoDIYBwQ06w5Z8V0eSngU7aON42qb6QjmPKLIEWVfWm99vKm2J
 F3wb8RTMrTOzrD8gqj53DMgoWYVDEzSEWYP0b1+xSctbaKocFHETfnhWMvv1F4jjKfde
 AyfwRt/7q9uHoc3zHEygwm2vZ127QYzKp/YbZkbnDOGoU/7oYnFodIK1U9O93xMhMpmH
 0L0txFZvIzFXEmPI2iXhg41GxWQxpFOjM66T5peK7faWTGmhksJZ0M+lmK4SJ1GMV3XX
 81khkJ/cZoOfgNRNUoIcqfyXCnfvPidn9i3Y6upZ4ZhnXduWn8UBvh6DRWW1O/HjYpLB
 r3lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776255418; x=1776860218;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=WUC/0p3bO+38N4pEARQpFAg8Bixho7M7pABWIReJg/I=;
 b=nZfhtHHgWcoTOHHEUOIn4o4Qp1Zz8GH+b+Pm2AcopC5G2BreSrToi9wb1lYYeMeua+
 aVWEDhdBq9cAE6nvu6C+855ZfDUCyi/Xs9LqYxmci2J/RTy5uKWLe5aEGRuK4z0s5krV
 q7CCSFtJGr8W+aD5iRcp6WukFPHzvFjp5r+PFyz4UD6xWMKI97Yt3rrDTD+9KYM5Plso
 qUfLys+9jkL6Te0JdFjfoYyditiqhLI+Cjd9dXvJt9CFGuRVaWrojxP6Y/T66rP/wr6y
 0cLBsRs9tJMymkThn6yoR4pobU3nMFTMqNh2rTnnrXyW3uwFfxfOzhzL0Ne/fciQj5lS
 kcoQ==
X-Gm-Message-State: AOJu0Yy+3gecWVb34vrWz5TR3xXWltQTPJeMrlnMxpUuXUobNGh9F+9l
 vlr1yioiKviW31AJMgUqeKwkeIDbrhkrRl61Eyk8I7JeAPWo1BUUWcseRbCkrL8trjs=
X-Gm-Gg: AeBDiesPaVZ69Zd/+gfTMCiCqbnFZkmRaFRUF7u/LTpOm8pbVR8rBzQinZUhE+9mXpO
 etvCZ9O1b9yFwygX5LeLWP6Y22XNrnfVjV5hBYw3kPbModTOd4D0amfnVVBvAB1KJYz/RpM5g1F
 aGFpZXZPSLPpx1fpI08cT0B3BKH5vHOynge9m28xmlz0nfcTfE0ls4CBrJ2t+HWQ/jts8qh3uF2
 Z/rJBO4mA40yKLuOtavNd3h6Jktu7saxO7egCjhuc4nb8LhMLJOIukkifFMjqSQZGAUrPastvEt
 Wj4ghvASakV4lSA9xY8GUyNoN9KyMyUpRyN12JMus9vUzst8XKJ9NyFy+QV1X6sNptyW02grkS6
 PaylGlWPR1vYa63BCeg7W3Aj4wR8yo5GgOl0ROoiqagcP5Z2nNBquTHgiGVSdYOSSy9UuUKqtWW
 8HacRMQ+9RGhDYv/YPbyPLCzNa+z8mgXczN8urCQKgOhXAVLgEY01Ryl4u3dE+hgBdRy67UMHEi
 u2qTuN4u9mciIpIBwTPG+cl8A==
X-Received: by 2002:a05:6830:34a3:b0:7d7:f13a:762c with SMTP id
 46e09a7af769-7dc27f60e59mr12962502a34.27.1776255417800; 
 Wed, 15 Apr 2026 05:16:57 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:d21e:1d0d:5514:dd13])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7dc76a12833sm1189151a34.3.2026.04.15.05.16.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2026 05:16:57 -0700 (PDT)
Date: Wed, 15 Apr 2026 07:16:53 -0500
From: Corey Minyard <corey@minyard.net>
To: Matt Fleming <matt@readmodwrite.com>, Tony Camuso <tcamuso@redhat.com>
Message-ID: <ad-BtS5b3qiowqb7@mail.minyard.net>
References: <20260415115930.3428942-1-matt@readmodwrite.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260415115930.3428942-1-matt@readmodwrite.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Apr 15, 2026 at 12:59:30PM +0100, Matt Fleming wrote:
 > From: Matt Fleming <mfleming@cloudflare.com> > > When the BMC does not
 respond to a "Get Device ID" command, the > wait_event() in __get [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.53 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1wCzB1-0001pi-Hg
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Add timeout to unconditional
 wait in __get_device_id()
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
Cc: openipmi-developer@lists.sourceforge.net,
 Matt Fleming <mfleming@cloudflare.com>, linux-kernel@vger.kernel.org,
 kernel-team@cloudflare.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_MIXED(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS(0.00)[m:matt@readmodwrite.com,m:tcamuso@redhat.com,m:openipmi-developer@lists.sourceforge.net,m:mfleming@cloudflare.com,m:linux-kernel@vger.kernel.org,m:kernel-team@cloudflare.com,s:lists@lfdr.de];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[cloudflare.com:email,readmodwrite.com:email,mail.minyard.net:mid,minyard.net:replyto];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	HAS_REPLYTO(0.00)[corey@minyard.net]
X-Rspamd-Queue-Id: 545134042B5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 15, 2026 at 12:59:30PM +0100, Matt Fleming wrote:
> From: Matt Fleming <mfleming@cloudflare.com>
> 
> When the BMC does not respond to a "Get Device ID" command, the
> wait_event() in __get_device_id() blocks forever in TASK_UNINTERRUPTIBLE
> while holding bmc->dyn_mutex. Every subsequent sysfs reader then piles
> up in D state. Replace with wait_event_timeout() to return -EIO after 1
> second.

This is the second report I have of something like this.  So something
is up.  I'm adding Tony, who reported something like this dealing with
the watchdog.

The lower level driver should never not return an answer, it is supposed
to guarantee that it returns an error if the BMC doesn't respond.

So the bug is not here, the bug is elsewhere.  My guess is that there
is some new failure mode where a BMC is not working but it responds well
enough that it sort of works and fools the driver.  But that's only a
guess.

I've seen this before in several scenarios, including a system that put
IPMI in the ACPI tree and it sort of worked but there was no BMC
present.  I had to disable that particular device.

What hardware is involved here?

Can you give a more detailed example of what's happening in the
low-level hardware?  If it's KCS there's a debug flag in the
drivers/char/ipmi/ipmi_kcs_sm.c file that should help.

Thanks,

-corey

> 
> Signed-off-by: Matt Fleming <matt@readmodwrite.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index c41f51c82edd..efa9588e8210 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -2599,7 +2599,13 @@ static int __get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc)
>  	if (rv)
>  		goto out_reset_handler;
>  
> -	wait_event(intf->waitq, bmc->dyn_id_set != 2);
> +	if (!wait_event_timeout(intf->waitq, bmc->dyn_id_set != 2,
> +				msecs_to_jiffies(1000))) {
> +		dev_warn(intf->si_dev,
> +			 "Timed out waiting for get bmc device id response\n");
> +		rv = -EIO;
> +		goto out_reset_handler;
> +	}
>  
>  	if (!bmc->dyn_id_set) {
>  		if (bmc->cc != IPMI_CC_NO_ERROR &&
> -- 
> 2.43.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
