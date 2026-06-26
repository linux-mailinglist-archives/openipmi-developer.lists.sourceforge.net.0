Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yrRmHcT3PWoK9ggAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 26 Jun 2026 05:53:40 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C7A6C9F80
	for <lists+openipmi-developer@lfdr.de>; Fri, 26 Jun 2026 05:53:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b="ICs/MsMy";
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=aojur6FV;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=LVwoiCDh;
	dkim=fail ("body hash did not verify") header.d=minyard.net header.s=google header.b=Er4phO+d;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=fail reason="SPF not aligned (strict), DKIM not aligned (strict)" header.from=minyard.net (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TgJ6md2FimiGGt4KS1/lgR71bbkPWBPXxsN+pMZuaNc=; b=ICs/MsMyO7N8zVzIyDMwMb1IA+
	41PHz9mxMCKDc8ezXVneqW8D82sEcvKpTK2RWux7mWrKp1s2J/xT3YZxFm2tHo3t/Vrn6TdlBFYSU
	ANCndldQs/++sTKe8HvSrV/iCkp7/Qpq3hbTkLlkOH8oaFLJVAqUby2wxR0pw2cAmbmM=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wcxd9-0001l7-Ow;
	Fri, 26 Jun 2026 03:53:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wcxd3-0001kf-QG
 for openipmi-developer@lists.sourceforge.net;
 Fri, 26 Jun 2026 03:53:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5ekautMQd5B1wPD60Ni6tLMTSZM+lQAdPvFp6WPEqzk=; b=aojur6FV0PnDC8vRl2rNb/0xz0
 DRKd/TdoDYpJBW3WKxLL5imIDxGVF0XhcvlAHBtm01+8NTFLvClcBEopetCZyDPlPiCm4AQjuCO+2
 QtcUvcJQS3r8I2ch64J5ZUwZULipIjBmOQhi1w1xKeBhbbxadn01/WNy/s64F9RcJ4+U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5ekautMQd5B1wPD60Ni6tLMTSZM+lQAdPvFp6WPEqzk=; b=LVwoiCDh6MNsU103uZGDJF3q+M
 VdwYyNPZSi7YkSz9JcHjiizTdR+qF2uDTw+WlYExu/cysYJpZHoCtaqZuY34ME+vVj5KPRlaFFmWE
 j4NSuPl1ZQ9IRRfu7wyyGDRzmE88u3F4H+KHJQPdTYxZS2ZjqOa1Bzxf8yvpR3jUkBs0=;
Received: from mail-ot1-f44.google.com ([209.85.210.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wcxd3-0003VU-AU for openipmi-developer@lists.sourceforge.net;
 Fri, 26 Jun 2026 03:53:22 +0000
Received: by mail-ot1-f44.google.com with SMTP id
 46e09a7af769-7e6e9408e30so469830a34.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 25 Jun 2026 20:53:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1782445991; x=1783050791; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5ekautMQd5B1wPD60Ni6tLMTSZM+lQAdPvFp6WPEqzk=;
 b=Er4phO+d+eJI7/az+5bDdqz61Q/4UdJN31s8tHWS71A227r4yvlKx9/sAJ83sNJI7S
 hGLr7l3I2U7XCZ4pILGRCW4ABFxtYmBXRtTH5L2YtdV+FoP7IXJDfGEYdoWM53GGvkat
 CwrcLaxsdBgl4pSY9gTM5E59uak84YfWgYVo0zFMcnZhv8Bf81x0nBKij6WILxbB91U0
 lTJZ26K1BmI8NaF+0mvo/IBubsNuOi/6RHI9L2eaDiDW3ScBpubLtqoweXFtAndKqM2i
 OJ8Kl1YKsqKe6gN6ao4lhmPM6MNeyOkpG2jC3sr156l3QAeXiMSw6U7dAgVVmFcviN5u
 28Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782445991; x=1783050791;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=5ekautMQd5B1wPD60Ni6tLMTSZM+lQAdPvFp6WPEqzk=;
 b=hdOCix5s8q6pcs3oyA7P735EtQ8ns1yYm4VVS0PO3lHKQC1Xnnq0FF3nF5GRgoNWNK
 0k4sDije2tUFmT/A6V7X9he7dnVRSFLJgpqw1C0HFxm3ky8EpQ3sllAqEDSi/KPQ7eOa
 XFXKD6++Ldnh4SKHcXTdE046WV1o1ThE1GDS46bdmmGgoC+lvQaDLGHflYlarKuYJ+Bz
 C/EStjyV+tc3dVDJaa7bFm3hj0dl6eh9p6aXZDG9FQiBnU4ZVYgsxnJUKtLHYcJlDiBQ
 wAzZkic9vqYPIAn9gPm3vbIWQ7wwWYH5m5l3tzUiz9eWwAVHT+22gD0s0IU5ZBi8pBwk
 witA==
X-Forwarded-Encrypted: i=1;
 AFNElJ/8smkp6NZl4ogB39jd5tDMX9RktbgkO08qudYSChFXzd9iTU3r4Je/4gvA/vvuCnnUIg3O2g8zecA9M9bKJi2/mJ4=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzZRWsVFG7lP/82ZLLrkAkINX5tMYZgsm/HKvYEYBovNWjFhZ4H
 avOHk3JTM7pnfZtoUlywSyDbeJ7G9vWCnCZLcx9IpGCMe2IRA/SD35tGVH6nMqBorzY=
X-Gm-Gg: AfdE7ckLmunNBEDI1VEQQNk9MME2HQXG9FGhxtdfob85QLBoaJH4BMuds9L4EyzmvCL
 kzXUeH5mw8L3cUvkEQIetq83KufyjM01M158NKlKZI93athf0GawozCHLaNVvefJfoR/HlKV+WK
 JdSjXYiWU2zUWVMrNketwMiiLiITS+gPOi5wYxBDB+prXHBajmu/1ixnzIewXscGgPkndATExu0
 GagcyMPhtXKD5pB6pmoi+lcTudSIUnXSz48pOvksjtrQJhcFdP6T49+VWF+QZcP54XKMF8UZbOf
 1MahiWRf8vIJOD4Ej0G3ONOO0FZ6SwANtU+0JPFihFzS4T039nTqZjCuU6sQn5R91BEHjzMrY4W
 SZJF4Ae1AQlZof/ap6ZRTU0LhTUWqUnksXl4ave5Q8v8QPYLZblJsWx3BXT6V7gH0x4GKUrGRA4
 NwI5+tC0Q7YhMhM+/YYe1scuxaCRkgfE9rPNHBcau/gBXYdbUCx2CodfHdAca5CRYIOFcGU6/+m
 qeGTUm4WB7ELZsLO6LgjJckTTK9UtA18VbV3A==
X-Received: by 2002:a05:6808:1211:b0:48a:a85b:ba53 with SMTP id
 5614622812f47-4921b03a0f7mr4919378b6e.35.1782445991132; 
 Thu, 25 Jun 2026 20:53:11 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:c047:37b0:eea4:3569])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-49352504eeasm669482b6e.4.2026.06.25.20.53.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Jun 2026 20:53:09 -0700 (PDT)
Date: Thu, 25 Jun 2026 22:53:04 -0500
From: Corey Minyard <corey@minyard.net>
To: "Nabil S. Alramli" <dev@nalramli.com>
Message-ID: <aj33oLelZRBlYgKD@mail.minyard.net>
References: <20260625224741.3632191-1-dev@nalramli.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260625224741.3632191-1-dev@nalramli.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Jun 25, 2026 at 06:47:40PM -0400, Nabil S. Alramli
 wrote: > Hello ipmi / BMC experts, > > We have been dealing with certain
 servers where the BMC firmware takes > longer than usual to become a [...]
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.44 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1wcxd3-0003VU-AU
Subject: Re: [Openipmi-developer] [bmc/for-next RFC 0/1] ipmi: Retry BMC 100
 times
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
Cc: openipmi-developer@lists.sourceforge.net, nalramli@fastly.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	DKIM_MIXED(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dev@nalramli.com,m:openipmi-developer@lists.sourceforge.net,m:nalramli@fastly.com,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	RCPT_COUNT_THREE(0.00)[4];
	HAS_REPLYTO(0.00)[corey@minyard.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[minyard.net:replyto,minyard.net:from_mime,lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A0C7A6C9F80

On Thu, Jun 25, 2026 at 06:47:40PM -0400, Nabil S. Alramli wrote:
> Hello ipmi / BMC experts,
> 
> We have been dealing with certain servers where the BMC firmware takes
> longer than usual to become available. We have been able to work around
> the problem by increasing the BMC retry counter GET_DEVICE_ID_MAX_RETRY
> from 5 to 100. Would you please share some guidance on whether or not this
> is a valid approach, and if it would be possible to incorporate in your
> next release?

No, this is not going to work.  It can increase boot times too much on
some systems where IPMI isn't working quite right.

The right way to fix this is to schedule something later to keep
retrying.  That's going to be a lot more complicated.

-corey

> 
> Best Regards,
> 
> Nabil S. Alramli (1):
>   ipmi: Retry BMC 100 times
> 
>  include/linux/ipmi.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> -- 
> 2.43.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
