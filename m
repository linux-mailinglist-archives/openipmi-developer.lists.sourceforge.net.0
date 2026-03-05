Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OGasKBvBqWnNDQEAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 05 Mar 2026 18:44:59 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D495C2166C4
	for <lists+openipmi-developer@lfdr.de>; Thu, 05 Mar 2026 18:44:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TWkdTiYkkcE3bvjkiG4Ny0A6DZ+ifwvVUI4N5RaTd0o=; b=nR10mKtUr6xi0jGYlOtcCAcXwg
	JzS1kGyk1kWay0bogG7p+Q9lnM5sGKfI4CTJPK4iMykBH8TzIWiUMnNA7Zuyu/hC7LocM+69gyQEG
	XieHNVxhZ+r3FC+nb6/VNTDD7K0cnKqfnG/dAsdEJFfUyBWazV7c5AAE6Mx/ijifveKs=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vyCkk-0000uK-UU;
	Thu, 05 Mar 2026 17:44:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1vyCkk-0000uE-3u
 for openipmi-developer@lists.sourceforge.net;
 Thu, 05 Mar 2026 17:44:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Yo+4L4ksTJYgRQdTa/M20r5FRu46uGQqrywNTn/gQac=; b=VzjSbrWdqG3spcp52paI87wlZh
 TlKyBeIKbwMiW36uduzECWZz8kGQFhPkGTlulZjWYRWbp3oVItlhCW0yZqspUKYbD3Z8lCaWM3w1r
 HOygUVA284zMWABzXti0oz+KsZ61tdLry/JP159hySE9KYX7c3SyBWntz2bFmu90Vlyc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Yo+4L4ksTJYgRQdTa/M20r5FRu46uGQqrywNTn/gQac=; b=juam/mOwdw6wA3yFmoNaV5vsgB
 iXYgA2tkKUmrNZv5fDvlfnuqPLEw0yODUuMhFgcA4xZMFCkH5beXOYsJwU85pWmNe2cNjncL50UQM
 zPjY7hehwPhFozMj49QN39VrI/NxqkvOv53IscA1oiL9Fbl73Nvw3PtwFlKAX9OUV9rU=;
Received: from mail-pj1-f49.google.com ([209.85.216.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vyCkj-0005pa-OG for openipmi-developer@lists.sourceforge.net;
 Thu, 05 Mar 2026 17:44:50 +0000
Received: by mail-pj1-f49.google.com with SMTP id
 98e67ed59e1d1-3598c008455so2847205a91.3
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 05 Mar 2026 09:44:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1772732684; x=1773337484; darn=lists.sourceforge.net;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=Yo+4L4ksTJYgRQdTa/M20r5FRu46uGQqrywNTn/gQac=;
 b=Jrrjtim38tUYr0/8cV9iIPvuvrvaY/3KF05JdhsmXaOB3moT9o6QkxCMRcU9xLcp6a
 JHAqcsYOh0afbBm0HTx+J/11h0v1ial7bA4TCibPF4HkcoICGJKmoBDjHp1TKExk6v/8
 jga/AV8GugLITlyBbkUsFrlJtspKoVDGRDjabvTVy+z/VQp9gmwVdySXKfna0iWmghPS
 94XypD7JU7jCe8NE8OQCGKZmMU9VrA0QjnFECitwGilriH3wPViFi8UZlRIGHuCpsCxF
 g02wJl4Dm9mo/S6/+0yAcP8I6R0gypw60lgCCn91ugmSoNY84+XsEPbvOLTyEtg3KXcu
 4vBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772732684; x=1773337484;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:reply-to:message-id:subject:cc:to:from:date
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Yo+4L4ksTJYgRQdTa/M20r5FRu46uGQqrywNTn/gQac=;
 b=AVQM7cqPELaJlGI69r7poASLnvqpYdfowYfZb0qlXBUP6QNG8gbOELCwR903Quv2as
 chRCm7nVswRYRtupys5IEqO1+DUVtmzy1RTueCPP6W5KLuuSJwdRsOQS2/Wn3mr+R+8s
 8SAckXibUm/Ri6t7rdktoxjYngziVsSa7iqBEINN1sok+rNV7P05MvOcpJwsJ17J9jJL
 6QIScoEerknFrekinERqTCQdFWI3SJ1awl1pV9FAVquNyrVRYIYYLcSCjCAyvIy1FAT9
 Skg2q/gi9cWLS87X2QbIE7q/rmIh18HNB4vSnM3Rk9xluKwwulkIGWJGRUXv9PMglHqL
 G9cg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXG/69j+5BV0L8hQo0fM5oQhBn7dqAS19IeqONbzVYYakqJ5XwSt5ek8oKKq7Xkb956is8lt0I9+p/S6ATQz3bcZgM=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yz2hy4HDkQZsxSyC4wxYQ8BaXhwwa/czNOu5P+OTckDmQfSG6hH
 qNg5iiubVUXkQ4DhRxRwcK7dtI/jprULZm+h/4zpdptwoLwVkPR0TuZ6k1rFBQ65oRd/jrhfZvU
 RiZiLnbs=
X-Gm-Gg: ATEYQzzf1bVW1g/65BEMGWirfv2PeUII2OB+mtko8RrpDGf8JK1n4MZS8h32xkgGDyo
 3qznhr9GAMH1VgVUscM+hYxkewHP/OXa/WXg3HorayYwcTJchDbz78uFfkVjBZhAVxz3Nse9Gzd
 xxuiOXR33nqh7MzqmXQjWeYDcL7MopRyO0GEEMX0+yoXYQ1Jgh/QwFzwULmdp48NlwWdLr60ODn
 2bv09dnyri92prTGal1CKEfsX2V5sbFVgiYztDcxpxbwEvRGeFBHc4syDSr2suix13rOQ7tB1P5
 Y/BMGSv8o+P7Pa8rAfjHg+xmweOGJqXG6sGOWf5uHJ4JCxlHLE7s84vxCvWhUpv8ByiPxEApzVJ
 D3O+BQZ+QprnSaWtdpkTjvD78eiMlfkaDHIRpN8TopMmaetcXRplWWh3CtS/muOcp5DAwL9f36T
 M9C28DDjdsoWBbsJV8CLMh1cZZIdLY80yHF/zgFidS5Fm6lWwy6jBCCrjIQa1D0rXlPEHIQFlf1
 1R4Yfph+80B5A==
X-Received: by 2002:a05:6808:ecd:b0:463:d796:ac96 with SMTP id
 5614622812f47-466d856c12emr107893b6e.21.1772729668372; 
 Thu, 05 Mar 2026 08:54:28 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:ba3:9f21:e11f:faed])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-464bb3a78b0sm13733123b6e.5.2026.03.05.08.54.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2026 08:54:27 -0800 (PST)
Date: Thu, 5 Mar 2026 10:54:24 -0600
From: Corey Minyard <corey@minyard.net>
To: Marco Crivellari <marco.crivellari@suse.com>
Message-ID: <aam1QHcbNrPvYUbX@mail.minyard.net>
References: <20251224161301.135382-1-marco.crivellari@suse.com>
 <CAAofZF4OZOHzBuBTYKVsbRp16+1auj3AvT7s5GhmK=NAgrRpAg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAofZF4OZOHzBuBTYKVsbRp16+1auj3AvT7s5GhmK=NAgrRpAg@mail.gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Mar 05, 2026 at 05:47:42PM +0100, Marco Crivellari
 wrote: > On Wed, Dec 24,
 2025 at 5:13 PM Marco Crivellari > <marco.crivellari@suse.com>
 wrote: > > drivers/char/ipmi/ipmi_msghandler.c | 10 + [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.49 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vyCkj-0005pa-OG
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Replace use of system_wq
 with system_percpu_wq
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
Cc: Michal Hocko <mhocko@suse.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Lai Jiangshan <jiangshanlai@gmail.com>, linux-kernel@vger.kernel.org,
 Tejun Heo <tj@kernel.org>, openipmi-developer@lists.sourceforge.net,
 Frederic Weisbecker <frederic@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: D495C2166C4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.91 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS(0.00)[m:marco.crivellari@suse.com,m:mhocko@suse.com,m:bigeasy@linutronix.de,m:jiangshanlai@gmail.com,m:linux-kernel@vger.kernel.org,m:tj@kernel.org,m:openipmi-developer@lists.sourceforge.net,m:frederic@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	FREEMAIL_CC(0.00)[suse.com,linutronix.de,gmail.com,vger.kernel.org,kernel.org,lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[corey@minyard.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,lists.sourceforge.net:helo]
X-Rspamd-Action: no action

T24gVGh1LCBNYXIgMDUsIDIwMjYgYXQgMDU6NDc6NDJQTSArMDEwMCwgTWFyY28gQ3JpdmVsbGFy
aSB3cm90ZToKPiBPbiBXZWQsIERlYyAyNCwgMjAyNSBhdCA1OjEz4oCvUE0gTWFyY28gQ3JpdmVs
bGFyaQo+IDxtYXJjby5jcml2ZWxsYXJpQHN1c2UuY29tPiB3cm90ZToKPiA+ICBkcml2ZXJzL2No
YXIvaXBtaS9pcG1pX21zZ2hhbmRsZXIuYyB8IDEwICsrKysrLS0tLS0KPiA+ICAxIGZpbGUgY2hh
bmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+IAo+IEhpLAo+IAo+IEdlbnRs
ZSBwaW5nLgoKQWgsIEkgdGhvdWdodCB5b3Ugd2VyZSBwdXR0aW5nIGl0IGluIHlvdXIgdHJlZSwg
c28gSSBqdXN0IGFja2VkIGl0LgoKSXQncyBpbiBteSBuZXh0IHRyZWUgbm93LgoKLWNvcmV5Cgo+
IAo+IFRoYW5rcyEKPiAKPiAtLSAKPiAKPiBNYXJjbyBDcml2ZWxsYXJpCj4gCj4gTDMgU3VwcG9y
dCBFbmdpbmVlcgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9s
aXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
