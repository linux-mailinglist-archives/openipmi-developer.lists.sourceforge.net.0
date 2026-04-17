Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SFERBZCV4mnP7gAAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 17 Apr 2026 22:18:24 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 721C741E78B
	for <lists+openipmi-developer@lfdr.de>; Fri, 17 Apr 2026 22:18:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jiKO/edlrbd4OKg7bXoE+SQA2ge+TetaQdKmCjGFIAs=; b=O+hsp5GzMA55EPe0F5efsW9c/L
	782oQwdf4iQzy4TOGekuQCP9MRWN+KAtaHDK+fpAVtlpYcwvzY3hKESUph2e7GCK57Ltu7qMtrqF/
	C03JnoPdQA0tC/N9FCI8bN3e3kc7SWBxvyVWsIcfEloxIy/LkVO8CLh+DgN7pgY1++RE=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wDpdh-0000eI-E9;
	Fri, 17 Apr 2026 20:18:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <matt@readmodwrite.com>) id 1wDllS-0003rr-8r
 for openipmi-developer@lists.sourceforge.net;
 Fri, 17 Apr 2026 16:09:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bLUi2U0XkcTAJ668mHdGjDuVvnhT0adO328P6x+koW0=; b=mjB9X0KbrTPoUEiqr1jFx6cN2L
 HVtXJDqwA52ai0QQ5pHmr8hsYldDpystuj3wAzRkTgHn3jCtsfYde2mtaIfYNCrb5TFUpj6Zoor9U
 JVWJPtqo7PbANF2qC2TyyxVyYIyELq5JI7IyB9nJSTSCM2MG53jg2UojxT3Dr3EHhe50=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bLUi2U0XkcTAJ668mHdGjDuVvnhT0adO328P6x+koW0=; b=mek51V8d89CO8/qIoQWupyWwKx
 eZYw9OLMerN3hhfldtzG7VhG5qpReXWR0LgarO1kE0nMTQTGRYJO0J12OD9aae90lC5ktBFGIGudm
 YZZNaMIszF4jghuTr3iELdQasTv6ueJdYNMHHExyNickMrhihm2p6ybbE8LlBOdKFSZg=;
Received: from mail-ej1-f44.google.com ([209.85.218.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wDllR-0005GO-NW for openipmi-developer@lists.sourceforge.net;
 Fri, 17 Apr 2026 16:09:54 +0000
Received: by mail-ej1-f44.google.com with SMTP id
 a640c23a62f3a-b9c1da7ac63so181895066b.0
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 17 Apr 2026 09:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=readmodwrite-com.20251104.gappssmtp.com; s=20251104; t=1776442182;
 x=1777046982; darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=bLUi2U0XkcTAJ668mHdGjDuVvnhT0adO328P6x+koW0=;
 b=lYPV/yp6IWnxLRn9UQyfsvHA3mJibO3tSk9JPU7Wq2DQXdJCqUAqOiJFHLHvmJLgjc
 PVit61ysIfDvZS2IOqoMsuxCU85Y97ErFW740AD/13qKAHdjxXg3SwYOuGvWASYY5OOU
 6+YBU3Q+L4Kv2dIcwm/zDp/hF5ZlZlR1Oy1lju1CRAKfXgR9n/6H+oYXUkje8A6Ru1iL
 6ephLv2ehpCbaiVbSWYoKzpBQNJ9S/MbPXDR/hm8Fh36SAgLeFzcMc5O9RHhOWUlsuxo
 91+S+wsvB/TB2p/jkHl8+X3uuVPouL46nG/S5nTLmK5JAmgCCqxCuEswFD0GGqHcUCZI
 fCeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776442182; x=1777046982;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=bLUi2U0XkcTAJ668mHdGjDuVvnhT0adO328P6x+koW0=;
 b=aJy9NaUNLKA43N+A9UlyJWKEIfRr+KTdi3Cx1pPRWjZsYpamkc9/7sa3a3CRI3wPm/
 yEHtv5eQgMvLA4RNjf8LULuhAyoAsEt7IR5X9LBzSc5SWZACZBfzSbA8Se+9wz9iK00O
 yvYJcMBzhWMa2gHnqJVgoMaZcwl/4py62R3ZzHM/F/Zn8QEw626hW4j7Mxvfy8AOj3/c
 PnyI6WGodW/DpJ2M9sjjAKjYyrYaPc2MN24mVUm/Abu8AYvCMqvSrWOmtPRJj4+rJBqK
 N/345c1A2GopyDTs6V+fPn0SF91DtfoIXTXnii8Zd1TQW36iUx3z58fct4E39AvAlU8B
 WTIw==
X-Forwarded-Encrypted: i=1;
 AFNElJ/LcKys6r6+a1868NS7rnvsLe3YkpS+xCI2Ds7IENIfWU5zKYOBZY6s/iGhvlQ1j5jBx4GrnHAnprYdN2PWSGTZO4w=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YylqZ7JV/dpzw47o7PYOTGRK40Cl6+UbqAkASXEGaO3DA7d137P
 kTBtsEC6fptDHuFO415bbGwgdY/4mcUP1xe7gTy8DnK47oqx/oKhTmvEFrvo7geM9jTJOvgKA6X
 3VDigl2s=
X-Gm-Gg: AeBDiesIJUQL9Q5mecCyt/0E4hT8daiYzmz8lgTeLVhoroUu6mar1DQQv7vuTyWeWIY
 FE8LHGFUer8zxYiDZsbCge8DyLCrWFPZNWzO0gEE9c6mg9OTrg5g9ckuA6LDl8TAZlDJIPEjQCf
 X0qiQZpCW0SR3dwJ/y9zFiYgggkSin5hgLgRucUcpUOW+jXqFm/L5FDrbggnnKAuWvx69rP2hfP
 wmrbTzfTnZpNfyd6iSGT4JaOup5tEMcq9JmYhkcS9doGyBrOC7YSWsIsR0CNVsjKaWlv84McO5K
 4ewfLPOpCs19kNjTT/e2sYUEjytv69hsi6aV0Kca++q7RSfu/CnbVeeQE+5YVxPVmTql8iNg31X
 Eawu4BSvnaGO5TxSnSvL1XVA0ltcXWRq/bT9nBbygIM9U9SuBzwR/ANgE5z4lFdUsvhMLH52UrW
 Jh3assmhAEDQnwZAsp/J/E6rExDmr/
X-Received: by 2002:a05:600c:681b:b0:488:b9c6:11ba with SMTP id
 5b1f17b1804b1-488fb794f80mr47360845e9.28.1776441684378; 
 Fri, 17 Apr 2026 09:01:24 -0700 (PDT)
Received: from localhost ([2a09:bac6:37a8:d2::15:415])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-43fe4cc375dsm5123817f8f.14.2026.04.17.09.01.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2026 09:01:23 -0700 (PDT)
Date: Fri, 17 Apr 2026 17:01:22 +0100
From: Matt Fleming <matt@readmodwrite.com>
To: Tony Camuso <tcamuso@redhat.com>
Message-ID: <aeJUyy2YVROZSx8w@matt-Precision-5490>
References: <20260415115930.3428942-1-matt@readmodwrite.com>
 <ad-BtS5b3qiowqb7@mail.minyard.net>
 <9b6af9ab-79f9-4f87-ab7c-8ad6efeb18ed@redhat.com>
 <aeABpewNzo4MURpO@CMGLRV3>
 <cb6c3b2d-8c22-4f62-9157-a5918c1e1ea0@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cb6c3b2d-8c22-4f62-9157-a5918c1e1ea0@redhat.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Apr 16, 2026 at 10:28:50AM -0400, Tony Camuso wrote:
 > > In my testing with updates from the Linus tree, after a BMC cold reset:
 > 1. The KCS driver returned -EBUSY to callers (good) > 2. The [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.218.44 listed in wl.mailspike.net]
X-Headers-End: 1wDllR-0005GO-NW
X-Mailman-Approved-At: Fri, 17 Apr 2026 20:18:09 +0000
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
 linux-kernel@vger.kernel.org, corey@minyard.net,
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
	FORGED_RECIPIENTS(0.00)[m:tcamuso@redhat.com,m:mfleming@cloudflare.com,m:kernel-team@cloudflare.com,m:linux-kernel@vger.kernel.org,m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:fred@cloudflare.com,s:lists@lfdr.de];
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
X-Rspamd-Queue-Id: 721C741E78B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 16, 2026 at 10:28:50AM -0400, Tony Camuso wrote:
> 
> In my testing with updates from the Linus tree, after a BMC cold reset:
>   1. The KCS driver returned -EBUSY to callers (good)
>   2. The watchdog daemon received the error and initiated shutdown
>   3. No D-state hang
> 
> My tests, conducted on a Dell PER640, verified that Corey's upstream fixes
> cause the driver to properly return errors instead of blocking.
> At least on that platform.
> 
> Which hich low-level driver are you using (KCS, BT, SSIF)?
> The PER640 uses KCS.
> # cat /sys/class/ipmi/ipmi0/device/params 2>/dev/null
> kcs,i/o,0xca8,rsp=4,rsi=1,rsh=0,irq=10,ipmb=32

$ cat /sys/class/ipmi/ipmi0/device/params
kcs,i/o,0xca2,rsp=1,rsi=1,rsh=0,irq=0,ipmb=32

attentions               3
complete_transactions    7080342
events                   3
flag_fetches             0
hosed_count              1
idles                    25359147
incoming_messages        0
interrupts               0
long_timeouts            264790
short_timeouts           13723711
watchdog_pretimeouts     0

> Actually, no. The 54 commits I backported simply bring my RHEL-9 test kernel
> to parity with the Linus tree, which includes [2] and ...
> cae66f1a1dcd 2026-02-13 corey@minyard.net ipmi:si: Fix check for a misbehaving BMC

Ah, I see we have some machines on v6.18.20 which includes this and
they're still triggering this problem.


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
