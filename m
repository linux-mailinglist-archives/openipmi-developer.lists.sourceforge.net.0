Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sDOuLER91Wlv6wcAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 07 Apr 2026 23:55:16 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E9B3B529C
	for <lists+openipmi-developer@lfdr.de>; Tue, 07 Apr 2026 23:55:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VvLc00+7Xz7+x1W1lvtqoP6/wou5Lta1dpJhH1/7esk=; b=UIO20wANT6pP4NnBzRTT5GD0Qw
	wVa5sCXscVUrmQpI5VDDv1dMfVvq7p5rP2aEJ+Qp2by7GOLnx21mEQACcfuOmGIBGWmOBsGfDKhpz
	tpSVrINPxqgYK3vzMsCDmNeGxfbwyDyyoImi8jS5IK5hBkCLxi1T2mwLPvDTy72CkvqI=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wAENw-00080M-1J;
	Tue, 07 Apr 2026 21:55:00 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wAENv-00080D-4P
 for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Apr 2026 21:54:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TI4j+R7vZ7D2UHMNo8VEOjHd1KyU4QozG4yX67r0d0Y=; b=nPwVO9shSJieMRmjrGQ90PfQRa
 X8nc4Yq0lPaO+OunlvScrPKPx+Xghg21/Be5/CsaT94WHyU94YFgD3LuS07SDJFfhaRFzf5VGLtEW
 wLWAu5B7CkId6pn5pkvOY/z+jl66jwTQrtJlpYFCZ3QecSxeYM1FEERqDyG49tr/OssY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TI4j+R7vZ7D2UHMNo8VEOjHd1KyU4QozG4yX67r0d0Y=; b=mrMj3lUC5pJR2kkSv6iv72Mm6s
 iJ2W7/B04CJjQOSamAZ2NvYRNIAnbCOCf4CjS0c4b7FBrHAcDwzdwTXvuz8Xc6GbF3mqp15OEuHAz
 WTnjRwWSWBQ0FrBBxIfAarRDfuR8aADB64u4PUIpU/E1V1WJy+A0w29PwwbGzxD8bUuY=;
Received: from mail-ot1-f52.google.com ([209.85.210.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wAENv-0003XJ-D3 for openipmi-developer@lists.sourceforge.net;
 Tue, 07 Apr 2026 21:54:59 +0000
Received: by mail-ot1-f52.google.com with SMTP id
 46e09a7af769-7dbb6c072f1so4559066a34.2
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 07 Apr 2026 14:54:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1775598889; x=1776203689; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=TI4j+R7vZ7D2UHMNo8VEOjHd1KyU4QozG4yX67r0d0Y=;
 b=Hx7c2k53xrbiQPjILkA3ChYwUMhpc4Ny9XPCdoKXwhxgCMNA9YDfjIh6004zE5UvqT
 Z3FqR74lZkau73arCPSxzr9uvdPfUXmbX7KYg1Z9BG2THhWsZoQ2vM6esbYsqHJmOmpg
 PDB4mPSJ7xNB5G7yxrPE0lJDSR9c4bLJWvTe3EAMeRMLzOxX1Xb0Zwqam4XG4I+73h5X
 Dnsdy2HwCTwao4DHt3zDIc45nC6C8jgyrZ0yzPtODbSp3AnSUfRdFlfFN+1IuHxoKWed
 2KK6ZJgH1hpxLVqamHuwOh/OBApiPqyKi9C0L0Vj2fUywuB2JVto0ZvjB9v/ySDTQS/s
 HktA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775598889; x=1776203689;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=TI4j+R7vZ7D2UHMNo8VEOjHd1KyU4QozG4yX67r0d0Y=;
 b=kQpqwOVL2gDi5GxOki7BtAxJQfOgLb+klL8Ts7UzzpYY7uucmKJ9zfy3si8tgvZd2U
 DgCaDw4B6aBd0OWrBT9xeWaBPmVRC6q1FoxPkiash+d2bazE6MzhY2WOI/Dp2/Xlyjze
 BL4brtWpBrErIUBJXTWKESsPw4DSzP3M2Cy5BTmBiw1n5Kf6369gfdl1n58nxGWl5MVm
 RCXDs8pXIkEtGdw+dEayYx9PXuyYBf28uQbMLpFKcEZBYjm93u9r3/4fNjN0bb6yZPEG
 vee7LUptGc2zzlUsiIxze5PusqEroIQyJJ0Ik+MDtOrgMwXGu4YB95vAN/7bPaH15abz
 gCuQ==
X-Gm-Message-State: AOJu0YxivkFB5MYZ7oEt3Vm2wcSoP9O6OlIHYxN7wLE6/+xmxugzEse+
 umXD8kjZ67VobBAp45Ftc0MkrTUwes4gaerKtU36+ZPLax6m37NPJyYx/KS4hrUnxD0=
X-Gm-Gg: AeBDies6isRv7BOYFZWKRbckCYkt7azZYjPutSw8vjwaEZi9COi8iEkxPIaQNkkz9cB
 0gF+stzgkWhWUdb/mTCoYyGvWajetQCxxcgquPpXYHjJtAcoSwPuKgOBMzw3mOah7lzE9E2Uvq4
 jKxdVz6BcXzrggEd8xKxVVYKDpgnBJrTW1J7MTORuGx6+mUg7zDX68rEpkAQFNDdcgoBggJ2Snk
 MTZ0zIxHsbCVnXPblNVDahU/xELk2+p72TPJRKu0NxUuHs0VYsYBfGPuugrGrX8fmD0/SwmaJ0B
 vXx/JKUne3MLNt705LpcuzQIU5aLlTCe55EAQnOtxNmfacfaWGZj3xvhMaL3oimH2zqmDghMlmB
 IhpWlzbKmJQ5HazBVhacSzLVWGBt7iQzi83fjecjk9Prsa1gVIa1pX8l7DkZQzr2VDuZxJv2rxQ
 3qiCLN0W/Kx9mxGcjUvja4Jhl2EUxk6mhI/6jz+MFU05Zqpze7PHvnHhpF1nXze93fGGMTbd5Ey
 b3Jyyx2DGCiY7Y=
X-Received: by 2002:a05:6830:d19:b0:7d7:cea3:6d89 with SMTP id
 46e09a7af769-7dbb6f248ecmr13998650a34.4.1775598888596; 
 Tue, 07 Apr 2026 14:54:48 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:b3d9:38af:c282:fdde])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7dbfc1cb79esm1633373a34.15.2026.04.07.14.54.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2026 14:54:48 -0700 (PDT)
Date: Tue, 7 Apr 2026 16:54:44 -0500
From: Corey Minyard <corey@minyard.net>
To: Tony Camuso <tcamuso@redhat.com>
Message-ID: <adV9JLnpTfDpEtAu@mail.minyard.net>
References: <20260407175134.3367345-1-tcamuso@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260407175134.3367345-1-tcamuso@redhat.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Apr 07, 2026 at 01:51:32PM -0400, Tony Camuso wrote:
 > When the BMC resets while the IPMI watchdog is active, the driver has >
 three failure modes depending on timing: > > 1. list_add double a [...] 
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
 [209.85.210.52 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1wAENv-0003XJ-D3
Subject: Re: [Openipmi-developer] [PATCH 0/2] ipmi:watchdog: Fix panic,
 D-state hang, and lost protection on BMC reset
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 minyard@acm.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tcamuso@redhat.com,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,m:minyard@acm.org,s:lists@lfdr.de];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	RCPT_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	HAS_REPLYTO(0.00)[corey@minyard.net]
X-Rspamd-Queue-Id: D9E9B3B529C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 07, 2026 at 01:51:32PM -0400, Tony Camuso wrote:
> When the BMC resets while the IPMI watchdog is active, the driver has
> three failure modes depending on timing:
> 
>  1. list_add double add panic -- the watchdog daemon retries while the
>     static smi_msg/recv_msg structures are still queued in the IPMI
>     layer from the previous (unanswered) request.

I'm trying to make sense of this.  Are you sure this didn't start
happening after you added a timeout on the wait_for_completion()?
Otherwise it would never return, the mutex would be held, and no new
message could be added.

Just timing out in wait_for_completion() there could cause all kinds of
bad things to happen.

> 
>  2. D-state hang -- wait_for_completion() blocks indefinitely because
>     the BMC never delivers a response.

This is an issue.  The lower level driver is *always* supposed to return
a failure.  Something else needs to be fixed.

I have seen several creative ways in which BMCs "fail to respond" that
have confused the lower level drivers.  If my guess is correct, there's
a bug in the low level driver that's causing it to not time out the
message.

If we don't fix this, it will cause other issues outside the watchdog.

> 
>  3. Silent loss of watchdog protection -- the BMC returns a non-zero
>     completion code, the driver's internal state becomes inconsistent,
>     writes to /dev/watchdog return -EINVAL, and the daemon gives up.
>     The system continues running without hardware watchdog coverage.

Again, are you sure this didn't start happening after you added the
timeout?

> 
> All three stem from the same root cause: the static message structures
> and unbounded completion waits were never designed for a BMC that
> disappears mid-transaction.

All that is supposed to be protected by a mutex.  That mutex is claimed
on all IPMI watchdog operations, and it shouldn't be released until all
resources have been freed.  Anything that violates that is asking for
trouble.

You don't mention the lower level interface (KCS, BT, SMIC, SSIF) but I
think we need to start looking there.

It may be that the timeouts on the watchdog messages need to be
adjusted.  The whole IPMI driver was designed on the presumption that
the BMC would go away for only a short period of time (5-10 seconds) and
not permanantly.  That has slowly been fixed over time, but things might
need to be adjusted in the watchdog.

-corey

> 
> This has been independently reported by Kenta Akagi on a Dell PowerEdge
> R640 running 6.18.7, also triggered by a BMC reset with the watchdog
> active:
> 
>   https://sourceforge.net/p/openipmi/mailman/message/59292850/
> 
> The fix takes a simple, deterministic approach: detect the failure via
> BMC error response, guard against structure reuse (msg_in_flight) and
> indefinite waits (completion timeout), then initiate orderly_reboot()
> when the watchdog is active.  This produces the same outcome the
> hardware watchdog would have -- a system reset -- but through a
> controlled path with clear logging and no panics or hangs.
> 
> If the watchdog is stopped when the BMC resets, no reboot occurs and
> the system continues normally.
> 
> Tested on Dell PowerEdge R640 with kernel 5.14 (RHEL 9) and verified
> against mainline (both patches apply cleanly).
> 
> Corey Minyard's recent fix for list corruption in smi_work()
> (ipmi_msghandler.c) addresses a related but separate code path.  The
> watchdog driver's own static structure reuse requires this fix.
> 
> Tony Camuso (2):
>   ipmi:watchdog: Reboot cleanly on BMC reset
>   Documentation: ipmi: Update BMC reset behavior for watchdog
> 
>  Documentation/driver-api/ipmi.rst |  61 ++++++++++++++++++
>  drivers/char/ipmi/ipmi_watchdog.c | 101 ++++++++++++++++++++++++------
>  2 files changed, 144 insertions(+), 18 deletions(-)
> 
> -- 
> 2.53.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
