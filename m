Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uEGpDDpA5Wl+gAEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Sun, 19 Apr 2026 22:51:06 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 649AF4257D4
	for <lists+openipmi-developer@lfdr.de>; Sun, 19 Apr 2026 22:51:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ao2YGz61Fb3rAhb4bymzmAggY4+msJN9GkIoUSKmAec=; b=iKketDbFdzcjE0J8dOo7JzLGnZ
	UtG7Ldq6Vc1XvZImDwk7qI/8Gt2ApekMRB+KJJy201Iu4U84Ak/Iv2hLby/kAAKXAE3AWyGCXLctU
	0OksagOAhdZkXE6iMU33P4yyGgrecIlmwELq5b2kuIDj0QdmibxDqajLaeddgA6+1Wqs=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wEZ6O-0006G9-Mx;
	Sun, 19 Apr 2026 20:50:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <matt@readmodwrite.com>) id 1wEZ6N-0006G3-L4
 for openipmi-developer@lists.sourceforge.net;
 Sun, 19 Apr 2026 20:50:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=F8jW6CjPy1p8vIsI5l4OpyiRRY6WDX+zovIrb3Ob5Qg=; b=O4Cxq9wM/bHTaTlmQGI22eHQUi
 SX3ui/ZwotlOC7RGjxjixLyUE9/ZYJyLmpvWpfCf3Ph61zzSedW3FatYE88ZWZD6p387cZ7fsCSin
 DDhojQT+x6RzczXv0wciFJrZpQ22ZHH3EKXthHL3SLoWqEkmQot+em1wsISnDfvMR5jw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=F8jW6CjPy1p8vIsI5l4OpyiRRY6WDX+zovIrb3Ob5Qg=; b=GCpWWda7hgIJgG2UPC3Rx1/zWv
 p5G4F4sVt2AzH8hx2hqD7XkzK9Nf7QkayhEUspWrx8pcmoDQVHkjA6okffy0/fzvmxDYfl8iOJ3Hy
 9dBsvju25YEabwcJkb/e5/e0/JWyInHpUhoXUZnI7TEmfIq+nnhs7T9qUaSUkQYhU4kE=;
Received: from mail-wm1-f51.google.com ([209.85.128.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wEZ6N-0001Ob-3F for openipmi-developer@lists.sourceforge.net;
 Sun, 19 Apr 2026 20:50:47 +0000
Received: by mail-wm1-f51.google.com with SMTP id
 5b1f17b1804b1-488a9033b2cso26132575e9.2
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 19 Apr 2026 13:50:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=readmodwrite-com.20251104.gappssmtp.com; s=20251104; t=1776631840;
 x=1777236640; darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=F8jW6CjPy1p8vIsI5l4OpyiRRY6WDX+zovIrb3Ob5Qg=;
 b=wJweA1zefUovm8nvYjQIYRd9a3PUgBC5M9G3+Ls3D2W9GJHFBw2NRqJlbvgeAFGA/5
 3v1RRy15Fz+2aGkdUTIb4jErhMxT6SOFvGYk7zzQQWT8zZ1hXiA8MrUw3hvGuDVAMul9
 ghh0AMD54V868COAreE7jVnh15kYTCA2/GMR04E+GX5bVXU3ZfLdqjUTPCWp4zgJwVLc
 isDsVwRbn22K3tsYI1s390IaVK76APQb3i+FkzN+xum4GdnFO04BbtrYxyl9zlGKhSRQ
 mFFGPCSLAKWebt+vxiVJ28mp/06Wyk9FNK44+jg0Qg+HepHlIg4w5z083qBMRHkZ/j9M
 7wvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776631840; x=1777236640;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=F8jW6CjPy1p8vIsI5l4OpyiRRY6WDX+zovIrb3Ob5Qg=;
 b=gW7OR9E1SAjxCa537a/LoEeuOWXJ51UJmRaWVAZq+455+afG/J0x95OiN7bvRaVXoD
 Zx1qZGsTxzGg70p77888Dq4jf8rq6g+elRTApQE3X/Ho9MIH2ZrhFsIQGr8nlN62bEMU
 Nw7XepGemASUKf+LtUoEZ9tkj/6vLTyKcHlROfagSb5ZeRu66H88SDYmtNpakN6q24wH
 /2A7z7OjY7VLbmr7StM1KBfxczjWQccrXnwGvawL7qXhcWj4tMGARQolSWNVUhOqGOhL
 gxPTCcZwiqb2C2AyyKsA1ma6WxR4MoAYrHGATgp/ihBYijIiDNb+8iG+jIZDbsvHVcIW
 Ny7Q==
X-Forwarded-Encrypted: i=1;
 AFNElJ9LSCgqt/serNLfUUnI4a+rD8D8+pZfvNezco0lKqitoy/eosqUf6/EFZ3BdoMkTKsyt7KAgzmtDJUrc9dQrHa7IdE=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzXWB9VyVH/fqQgSofMAGClGsmOlDAY1bNIf9gX7z7RY25xkIaB
 L0ab7WHjsUZ6lscq4LCcA4MfOVHFBJrzEU+aBGwnW+ib2qYdqUEN9do4juBTfmZDWbo=
X-Gm-Gg: AeBDievLk7R1PLzag2kIdDPY9MiMuW6YZ4oH0H8ewIWn0AL7sHY9dGTqqamhJejw60p
 miyq+//hy9Oa5fJD5ruaaxN7H+Ptx10mSl9oPQYYZI01yTpPkq8wOZVg6912RfaEpIvpgAiqnjD
 UlbDNXzAzMkP+SOEAKvVa2/MYwnKRwAYjDdd69x5DncRJu4uZmESVsmD0C8d5KMZZX61z9h0mMN
 Y6PgcwCGtzGjYnMETKp4xUucLii6KNflIsdacPTmMoWkrGg1RpVlM6N/jdogt8jYRfFHeWwrhQC
 WMOEZhvJmZmB43Ng9J6Y3OjZ4mrCREK1bySWliiAJqg2H8U8OKYJT7Kh6gDuqGnp1TkgSqdLR5A
 aYTgSzaiu6REGujtsthaYv00Bia3oa+ZWmdrYVm0CLafli3meObkVOg5K3J/YIQAbGVUDfJcu4w
 J1WFUSqPkyzWOo2yPVNw==
X-Received: by 2002:a05:600c:498a:b0:489:ad:7b5b with SMTP id
 5b1f17b1804b1-48900ad7b76mr57498225e9.24.1776631840357; 
 Sun, 19 Apr 2026 13:50:40 -0700 (PDT)
Received: from localhost ([2a09:bac6:37a8:d2::15:3d7])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4891df9e50asm8444435e9.0.2026.04.19.13.50.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 19 Apr 2026 13:50:39 -0700 (PDT)
Date: Sun, 19 Apr 2026 21:50:38 +0100
From: Matt Fleming <matt@readmodwrite.com>
To: Corey Minyard <corey@minyard.net>
Message-ID: <aeUsnI2nHAbtqoqt@matt-Precision-5490>
References: <20260415115930.3428942-1-matt@readmodwrite.com>
 <ad-BtS5b3qiowqb7@mail.minyard.net>
 <aeKwa4napKfBerJM@matt-Precision-5490>
 <aeLIE0Psdlvr9l7j@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aeLIE0Psdlvr9l7j@mail.minyard.net>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Apr 17, 2026 at 06:53:55PM -0500,
 Corey Minyard wrote:
 > > The EVENT_MSG_BUFFER_FULL flag only gets cleared when a unsuccessful
 > READ_EVENT_MSG_BUFFER command completes. Getting data from the [...] 
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.51 listed in wl.mailspike.net]
X-Headers-End: 1wEZ6N-0001Ob-3F
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
Cc: Matt Fleming <mfleming@cloudflare.com>, kernel-team@cloudflare.com,
 linux-kernel@vger.kernel.org, Tony Camuso <tcamuso@redhat.com>,
 openipmi-developer@lists.sourceforge.net,
 Frederick Lawler <fred@cloudflare.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-0.61 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,readmodwrite-com.20251104.gappssmtp.com:s=20251104];
	FORGED_SENDER(0.00)[matt@readmodwrite.com,openipmi-developer-bounces@lists.sourceforge.net];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:mfleming@cloudflare.com,m:kernel-team@cloudflare.com,m:linux-kernel@vger.kernel.org,m:tcamuso@redhat.com,m:openipmi-developer@lists.sourceforge.net,m:fred@cloudflare.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[readmodwrite.com];
	DKIM_MIXED(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,readmodwrite-com.20251104.gappssmtp.com:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matt@readmodwrite.com,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 649AF4257D4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 17, 2026 at 06:53:55PM -0500, Corey Minyard wrote:
> 
> The EVENT_MSG_BUFFER_FULL flag only gets cleared when a unsuccessful
> READ_EVENT_MSG_BUFFER command completes.  Getting data from the
> BMC has higher priority than sending data to the BMC.
> 
> If the BMC continually reports success from READ_EVENT_MSG_BUFFER, then
> that would certainly wedge the driver.  But it would have to continually
> report success for that command, which would be strange as its supposed
> to error out when the queue is empty.
 
That does indeed appear to be what's happening.

The implementation of intel-ipmi-oem's OpenBMC READ_EVENT_MSG_BUFFER
handler does not fail when there is nothing to read,

  https://github.com/openbmc/intel-ipmi-oem/blob/master/src/bridgingcommands.cpp#L704

> If it's really something like that, I could also look at adding limits
> for those operations.

That would be great. Me and Fred would be happy to test out any patch.

I still think the original patch I sent is a worthwhile defense.

Our periodic monitoring scripts cause TASK_UNINTERRUPTIBLE tasks to
block behind one another when we hit these kinds of issues in the IPMI
code. Untangling that across thousands of machines can be time
consuming and a more explicit EIO or ETIMEDOUT would help with triage.


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
