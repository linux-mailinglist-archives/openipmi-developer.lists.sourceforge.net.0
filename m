Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iHvcEPKy32lCXwAAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Wed, 15 Apr 2026 17:46:58 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 592AF40612A
	for <lists+openipmi-developer@lfdr.de>; Wed, 15 Apr 2026 17:46:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6FweKq5EkOTUN6v1oJ+kOFgGRIC6rE5Vm2uZdbMjG8c=; b=PAIHx6/o5+Tcjzv221HFt1+ySX
	ZWIsRCtkbFkjqcBpRtpCL0oqO+fKgvWqibF7y7khz96c+KihAnQGxC7snTK2Co0Pa1f4EUL0qW8it
	OOBQ0OKS9i1rhCxbR/QO9R7JFzHV9jGp2vVWzPxYSzZe9w9cahs/Cfy6mSuBUr0Cv92w=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wD2Rz-0002rQ-OP;
	Wed, 15 Apr 2026 15:46:47 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcamuso@redhat.com>) id 1wD2Rx-0002rK-Oa
 for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Apr 2026 15:46:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VAOmqSC8Iyku/YlMxnThz5s3aHLz9F47v6fq4UURsX4=; b=GujMdzGR6KtykogpRmvh2S+hG2
 ocP7azo7evIvnjlY6OhhT0rMMZb87+RtX61ZjAEwPwe4pPZIflHlQ++N2FhEK3etl6IdZ45GKRnMq
 oytQ/EdL+Z8fdmke+K/vGL+CXTC99JMze/Wgh00s5LZ3u0LSL5Ixa0Qd2nCQ8Cwwe540=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VAOmqSC8Iyku/YlMxnThz5s3aHLz9F47v6fq4UURsX4=; b=lj08hRW5O3Upolj/e1eTZ7ozri
 xJ5wrSzaG1qiIF4ugRDfT/b1xqSbU6qTlORUnxSQBdoUWXYe/bA6c/8byJwHFoclphP3GmqNTwpW4
 TaqKgac5JKxZr9/SJawGZ8No4n/0WpjjmtBBaCvyHFJngA812U85Is7m8dB2RrnkTVYs=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1wD2Rx-00051d-89 for openipmi-developer@lists.sourceforge.net;
 Wed, 15 Apr 2026 15:46:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1776267993;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VAOmqSC8Iyku/YlMxnThz5s3aHLz9F47v6fq4UURsX4=;
 b=e6GN4IEKdzLwp2MTMFFpTUoPVeUbwOrproem4yXinO49JBKa9lbx6jiDeiJTl2fkHuAxcO
 JE4ZROvloQXNMcM0RXyOClX2Emghq1ZC7aTolfTewtGBcxffhk4IPQ39euP+qY7mfJG60+
 SZRe4Pn/Ln998bTScrlnyqaTaIUa4h0=
Received: from mail-ua1-f71.google.com (mail-ua1-f71.google.com
 [209.85.222.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-435-boeXgSk6O16qBZxwUKhdlA-1; Wed, 15 Apr 2026 11:46:32 -0400
X-MC-Unique: boeXgSk6O16qBZxwUKhdlA-1
X-Mimecast-MFC-AGG-ID: boeXgSk6O16qBZxwUKhdlA_1776267992
Received: by mail-ua1-f71.google.com with SMTP id
 a1e0cc1a2514c-95673dd297dso2049241241.2
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 15 Apr 2026 08:46:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776267992; x=1776872792;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=VAOmqSC8Iyku/YlMxnThz5s3aHLz9F47v6fq4UURsX4=;
 b=KTNyDGUCNI5hA3HL0FFw1021wSL1lJRxQtM+wac6QFtnVEbbnBRBAxg+vbPZh88t1x
 4NdUHBHqGNErqhlBnyQDOpXtWDg/bWTHoFJHVIJdcYGlPzZuX/yRfUiTVX6DqbGgXXfD
 /46x6hoJ8r3JkcgZq96lTxifi0KM1xMwH/QXOCMrzdtlAfs2Apd5lDmcYFZaPfEEViJm
 qVII4SGsGaCqnfZfNU1UQ6rr1J4p2n/L7RmvHwP52rlAP/5nsnb4HJrIs+cYLe0Obkvz
 K5WRwMcr0e/dnEHxFev/Mti86jIKNRK3RcH4B2okEY/NS3mrYfdp80pKoVNNqx+Jhhyj
 +iOQ==
X-Gm-Message-State: AOJu0YwWAA/MUYSqZB0ZSstvB9DIHo7X66bfl9iKLTEfi3el5iJypdMX
 j+NR3V/c3bj3AFQX0Y3EgSSIgVE36PQsIBAeTx1hyvOAOEk/kTARgyMsF6L3jtFwNQcs36kBlyk
 UIfn3W5EIXNBXeRG/Ve5srbzC2PnNW4U11kWuQRl6dAa7ElVVsilBO2zykJL6YrILE+Z2JunA6R
 MPdI990Q==
X-Gm-Gg: AeBDietbJJZOGPWZRioW/vuQ7pf28sIdUvd0gmRhaICbwbROkCTBU873MsydOtQPmB2
 KT9UiDUzUCax6HVkHe8mUV4efw7b7jFmsFDZsbG9Ylf5NiKHb9aiv6wyoNWR7G2Vp8f0Lq23k4Q
 BvaH2rn76nXaz4jJDRs562CKGJx2aCNrx4xoG9Go0KJH/dqv51Z1477+YW6duP2w+ZsRSuNJReQ
 29yIwEi1oSNYpS/Vd7DRAjwKtEz/L9u6PJxp+RPb5Epy3u/dyN8SjJ00Fgqo9ojc0Fo5g4BhdZY
 yyhXehtwcugfeUS8Ix9VyWHEpFduKO3DR10s3fZ9fTkuoEXHQUQD/YD0ThezsJnnBr/xiFEj5Wc
 TMCYgWvc1bXQ59QEl0sGqdJM05Gof44ng35gm
X-Received: by 2002:a05:6102:800c:b0:606:49d:183f with SMTP id
 ada2fe7eead31-60a00d2cb43mr10274671137.26.1776267991854; 
 Wed, 15 Apr 2026 08:46:31 -0700 (PDT)
X-Received: by 2002:a05:6102:800c:b0:606:49d:183f with SMTP id
 ada2fe7eead31-60a00d2cb43mr10274578137.26.1776267991209; 
 Wed, 15 Apr 2026 08:46:31 -0700 (PDT)
Received: from [192.168.3.252] ([74.75.144.57])
 by smtp.gmail.com with ESMTPSA id
 d75a77b69052e-50e1b016a2asm18416401cf.31.2026.04.15.08.46.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Apr 2026 08:46:29 -0700 (PDT)
Message-ID: <9b6af9ab-79f9-4f87-ab7c-8ad6efeb18ed@redhat.com>
Date: Wed, 15 Apr 2026 11:46:27 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: corey@minyard.net, Matt Fleming <matt@readmodwrite.com>
References: <20260415115930.3428942-1-matt@readmodwrite.com>
 <ad-BtS5b3qiowqb7@mail.minyard.net>
In-Reply-To: <ad-BtS5b3qiowqb7@mail.minyard.net>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: sX-bz7_ExZmah32uLiOVCYJN2j90gjywc0mRURig_Xg_1776267992
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Apr 15, 2026 at 12:59:30PM +0100, Matt Fleming wrote:
 > From: Matt Fleming <mfl...@cl...> > > When the BMC does not respond to
 a "Get Device ID" command, the > wait_event() in __get_device_id( [...] 
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1wD2Rx-00051d-89
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
From: Tony Camuso via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Tony Camuso <tcamuso@redhat.com>
Cc: openipmi-developer@lists.sourceforge.net,
 Matt Fleming <mfleming@cloudflare.com>, linux-kernel@vger.kernel.org,
 kernel-team@cloudflare.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-8.61 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_MIXED(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:corey@minyard.net,m:matt@readmodwrite.com,m:openipmi-developer@lists.sourceforge.net,m:mfleming@cloudflare.com,m:linux-kernel@vger.kernel.org,m:kernel-team@cloudflare.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,redhat.com:s=mimecast20190719];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,redhat.com:-];
	RCVD_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:helo,lists.sourceforge.net:rdns];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[tcamuso@redhat.com]
X-Rspamd-Queue-Id: 592AF40612A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Apr 15, 2026 at 12:59:30PM +0100, Matt Fleming wrote:
> From: Matt Fleming <mfl...@cl...>
> 
> When the BMC does not respond to a "Get Device ID" command, the
> wait_event() in __get_device_id() blocks forever in
> TASK_UNINTERRUPTIBLE while holding bmc->dyn_mutex. Every subsequent
> sysfs reader then piles up in D state. Replace with
> wait_event_timeout() to return -EIO after 1 second.

On Wed, Apr 15, 2026 at 12:17:04PM, Corey Minyard wrote:
> This is the second report I have of something like this.  So
> something is up.  I'm adding Tony, who reported something like this
> dealing with the watchdog.
>
> The lower level driver should never not return an answer, it is
> supposed to guarantee that it returns an error if the BMC doesn't
> respond. So the bug is not here, the bug is elsewhere.

I've been tracking a related issue (RHEL customer case) where BMC
reset while the IPMI watchdog is active causes D-state hangs. This
appears to be the same root cause Matt is hitting.

I backported the recent upstream KCS/SI fixes to a RHEL 9 test kernel
(54 patches bringing it to mainline parity) and tested today on a
Dell R640.

Test: Trigger `ipmitool mc reset cold` while watchdog daemon is
running.

Results with backported fixes:

   [  245.376402] IPMI Watchdog: heartbeat completion received
   [  246.376392] IPMI Watchdog: heartbeat send failure: -16
   [  247.377560] IPMI Watchdog: heartbeat send failure: -16
   ...
   [  252.413240] IPMI Watchdog: set timeout error: -16

The watchdog daemon received error 16 (EBUSY) and eventually
initiated orderly shutdown:

   write watchdog device gave error 16 = 'Device or resource busy'
   shutting down the system because of error 16

Key finding: With the upstream fixes, the driver returns -EBUSY
instead of blocking forever. No D-state hang. The watchdog daemon
handles the error and initiates orderly reboot.

Note: There was still a delay of several minutes before the daemon
timed out and triggered shutdown. The driver returned errors
promptly, but the watchdog daemon's retry logic (error retry
time-out = 120 seconds) extended the overall recovery time. This
may warrant a separate look at whether the daemon's retry behavior
is appropriate when the BMC is completely unresponsive.

This confirms Corey's assessment - the bug is in the lower-level
driver not returning errors, not in __get_device_id(). Matt's
timeout patch would be a defensive fallback, but the real fix is
ensuring KCS/SI properly returns errors when the BMC is
unresponsive.

Tony



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
