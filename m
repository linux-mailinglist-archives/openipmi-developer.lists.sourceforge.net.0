Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iLejAyX552kVDgIAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Wed, 22 Apr 2026 00:24:37 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9744402AD
	for <lists+openipmi-developer@lfdr.de>; Wed, 22 Apr 2026 00:24:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1CucAzCf7hOshTT+9CvXvwgROuHl/hoPf3Lse7NSQAY=; b=iXl6bG+KjY86RhpNPay8DBN3sC
	YbjIc+SJiX7MEhpMlFWfHChb6tJvN1CIL/uUOkXULGFHKvLoDIncMKgHk023OOqcaBixDtAyYcRMY
	Idw0ToJCwfzOrCU+c+rg6lN8BU8QFBQUiMkmb6SUG/GnOLCC37+OuYJ9zyv+Nbd6Gz7g=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wFJW6-0004oy-Sr;
	Tue, 21 Apr 2026 22:24:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <matt@readmodwrite.com>) id 1wFJW5-0004or-VQ
 for openipmi-developer@lists.sourceforge.net;
 Tue, 21 Apr 2026 22:24:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LzDED3JWTJqTjYNkgN0qrA8Wjg5ooo4KeXF6sOnKL4g=; b=fExPJ3Q1vbMz3zbT3+frbQqJm5
 RVZ0F8IYHxf+T5fHsryPJuajJPrUjl8OWwc9BS95diV6UBch9WNFNvaIVQrOu0Igy/optFkL0uC4T
 B+xnSVBnvZQTSVYP45cjEt9I2ibWoW5+l/jfot06x9GxBtM+hdbin97DmeAYpenHTO0s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LzDED3JWTJqTjYNkgN0qrA8Wjg5ooo4KeXF6sOnKL4g=; b=jCvUTsyBBsxsJxUngOpmzrzGbY
 +GEObsM4oswD3CZ81hh/hMJBCFoTLJ3/k9NzLPoCp3fa633KslUiDqY2fIAZfDL8p68lhUnGJUehL
 KIkkAb/SN8r4mx+K16lkXBrhJq2u2aq9oTGIduIVWaPGfAnSUNlWXuxpG5oknZdEA5M8=;
Received: from mail-wm1-f52.google.com ([209.85.128.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wFJW5-0007Lp-DX for openipmi-developer@lists.sourceforge.net;
 Tue, 21 Apr 2026 22:24:25 +0000
Received: by mail-wm1-f52.google.com with SMTP id
 5b1f17b1804b1-488af96f6b2so60802365e9.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 21 Apr 2026 15:24:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=readmodwrite-com.20251104.gappssmtp.com; s=20251104; t=1776810259;
 x=1777415059; darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=LzDED3JWTJqTjYNkgN0qrA8Wjg5ooo4KeXF6sOnKL4g=;
 b=ksCPuVJziG5NNikdtxzHZMH9o/JSfASKvjGFez06uSFf8I9W6p8viQ8jDbtJWUux8g
 NIVHtiuaT2qxBqI4E/9UFqoGgvBIeIFRf4LrDH9JKVVgo/j/87KTUgGT1ij+8zslUGvS
 MKCDsV2OD9O/j/iazpsM/EOqO14uNQ93aEp66cqOx4IT0492dRW6f1DQaAecgu5oYQ5G
 dS6AyuXOw/a20Qw3LWz2oETb/ws3072IbwmMNzlw51egZjgIFtNeysLtbwyQ9B7+6+HW
 c9LE2EBcCRmMb93lidTqrZnozG8uJfKaeSj3DgriIoL3JBIJ2UAi8C+42gm8LG7VYpIj
 +Rjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776810259; x=1777415059;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=LzDED3JWTJqTjYNkgN0qrA8Wjg5ooo4KeXF6sOnKL4g=;
 b=Tk40i05vPC3yGEe97jCFoPMlVsMA6aExxsHm4zUoeWjziiPxqoS9rSnhsXzjDV7gkB
 KmkQmKfNQWAuEoLXLIKnZeqE1ogFe0bvWMjNYw04pKZGtlIPeYGFbXteKvoOOFqSPp0r
 pWJsWR/S8zKo50ntRTEcvwNpAY0CyRvAe4KAHQ/H7JS/Q81RrOmDmwBudEQBJhapU8SW
 y6fou34PBR7jIHI7SUD1uwPGRyHOPtwBPR5Yc5MbFkUPuMH6f4/vnz43oqqoSncZntc2
 /nLqtedREfg5J25mpgLP6aEYrfcS8FZ15kAP+1zbmPKH2Tmww0SYN3/Sfa0b6TbIDiOC
 bItw==
X-Forwarded-Encrypted: i=1;
 AFNElJ+2LhdHbCKjvVIlfJ7oEmQA2/GPzOz0jo0VXoX+lL2guZbQ1JHY3VhGq3TQ16Ze/Edlv8T1ikSA0wgRH2o5bmzc3gM=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwwL1Jbr8fZTbP8w4Bec8B8UDtrLsWy/Idp1jNM/7XmYzOpan4p
 wO1K01pEh9sl3Un5BMlI02/hl5TFDK4J1j1y0uBjHtmEzmFEhS7OuZiQfU0lAVJ7l2Q=
X-Gm-Gg: AeBDiesjRMtho77qT5XXkkkDnVnygtIoPW6UMAinGhboLkTkFPLj18uaa3N65B8ihKG
 9CeJAld1hkkxOCXnO5e/EVgaaGtTN5fE89cuNgc9b74+bpGQ+XbzpwWhy3dUFIJBXVh4CyBNoHc
 piCeSQ/3GydoUa8rGBzDOZLTgPUp4ebHou59xSMQM6URqTrSPY7nAiw3Muoa0qJG55ZTMToYqPu
 RQb8YNdf8hws1S9ih4epbDf/pPRzdr0om5uU9+36X4/FGrxEz+bnDrsdVF1jM6gJ0/PmxyrOevz
 vGyB9MmbbsG9Kg9H3+zi0SHDbFJshX8c4dlH5aqznku1jE+XQ4ek6BY2pUkrhg7wnBH80qTtLAy
 en2amzA02ys0rntm/z46tVIiuAtqoM+JkGByLZ7evdPRgw4VhfeyGzSw7xcfyryBxq5hHQXl4iI
 6Vu5wbnMU6F5JZQAWZuCU2
X-Received: by 2002:a05:600c:34c7:b0:489:1c32:210d with SMTP id
 5b1f17b1804b1-4891c32266amr150625645e9.15.1776810258776; 
 Tue, 21 Apr 2026 15:24:18 -0700 (PDT)
Received: from localhost ([2a09:bac6:37a8:26d2::3de:14])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4891c08faffsm351801785e9.1.2026.04.21.15.24.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2026 15:24:18 -0700 (PDT)
Date: Tue, 21 Apr 2026 23:24:17 +0100
From: Matt Fleming <matt@readmodwrite.com>
To: Corey Minyard <corey@minyard.net>
Message-ID: <aef4rrkhL4xFmh3h@matt-Precision-5490>
References: <20260421132544.2666174-1-corey@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260421132544.2666174-1-corey@minyard.net>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Apr 21, 2026 at 07:42:42AM -0500,
 Corey Minyard wrote:
 > Matt reported that there were issues with the IPMI driver getting wedged
 > in some cases. It turns out that the BMC was not reporting a [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.52 listed in wl.mailspike.net]
X-Headers-End: 1wFJW5-0007Lp-DX
Subject: Re: [Openipmi-developer] [PATCH 0/1] ipmi: Fix issues with BMCs
 that report event and message incorrectly
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
Cc: linux-kernel@vger.kernel.org, Matt Fleming <mfleming@cloudflare.com>,
 kernel-team@cloudflare.com, openipmi-developer@lists.sourceforge.net,
 Tony Camuso <tcamuso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-0.61 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:linux-kernel@vger.kernel.org,m:mfleming@cloudflare.com,m:kernel-team@cloudflare.com,m:openipmi-developer@lists.sourceforge.net,m:tcamuso@redhat.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[readmodwrite.com];
	FORGED_SENDER(0.00)[matt@readmodwrite.com,openipmi-developer-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,readmodwrite-com.20251104.gappssmtp.com:s=20251104];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[matt@readmodwrite.com,openipmi-developer-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,readmodwrite-com.20251104.gappssmtp.com:-];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[openipmi-developer];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns]
X-Rspamd-Queue-Id: 3A9744402AD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 21, 2026 at 07:42:42AM -0500, Corey Minyard wrote:
> Matt reported that there were issues with the IPMI driver getting wedged
> in some cases.  It turns out that the BMC was not reporting an error as
> it should have (per the spec) when the event queue was empty.  The IPMI
> driver would then request the next event, and so on, wedging the driver.

Thanks for replying so quickly, Corey. I'll test these out.

One bit of info I pulled out of the stuck machine is that the response
looks properly formed.

I sampled the first 8 entries and they were all identical 19-byte
successful READ_EVENT_MSG_BUFFER responses:

  1c 35 00 55 55 c0 41 a7 00 00 00 00 00 3a ff 00 ff ff ff

So on this machine, the event replies do not look short or malformed;
they look like repeated successful event-buffer reads with the same
payload.

Thanks,
Matt


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
