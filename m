Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SCDfJk/dhGkV6AMAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 05 Feb 2026 19:11:27 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AA220F65E2
	for <lists+openipmi-developer@lfdr.de>; Thu, 05 Feb 2026 19:11:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ov4M5UQA4o9KCsLYpKBB7E1/zoVDKu2htjoOzLnL2yc=; b=duzl6Ep9p2eZ3qaWwGe8Sk1oXa
	0IVQQj+i9S+dcus0042Xo0VEIdukgm4bR5g7C+wNZCSg1FVfLQlle0hPZEtpPcj+oT3jU6K7RsTWo
	KJrUw3uvH2jYsPkcPd17zJXiXCGWgUf3VI1b8VOwoicVIU74JYSDWCqkHgkrs6GHUf70=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vo3or-0003A3-Cz;
	Thu, 05 Feb 2026 18:11:09 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1vo3oq-00039w-1o
 for openipmi-developer@lists.sourceforge.net;
 Thu, 05 Feb 2026 18:11:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xG5JhUoaexE0C64Mm8Uw5KiIGD8Iz9i2gDDX0Fbs0Lo=; b=U8Z/a5cq2wK6LannInB5J1w0Ye
 aWv8p/ZR533nX8gJMecxIhEzUmrkGFj5fqiln/E+jlf153wxJ5Afg09s5SLIqgyaIoNismzocd5UO
 W6AwqEDSf1EStXM0e7J4i9lTsB8pOAq4VOZOwwKDapEgqhvKQL4lBSVf0BaXQ3TQ2mWY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xG5JhUoaexE0C64Mm8Uw5KiIGD8Iz9i2gDDX0Fbs0Lo=; b=d7Lk4Za/bQpFQsd0peJifeVLTg
 sNQcBvdIpHMFyHVfzxMEGo8UZpgvlqfMDjGlGz6tFfWlXe8gmAMI5Q21isrpOKGatN2kY99fVS3fn
 O7DRgSqnzIj3VQc/R0/hkc2DwRFyDhWV9dCd01H89ZsO8Vmp3ay6NB+tWSQTk8L61baw=;
Received: from mail-dl1-f48.google.com ([74.125.82.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vo3op-0003YM-EL for openipmi-developer@lists.sourceforge.net;
 Thu, 05 Feb 2026 18:11:08 +0000
Received: by mail-dl1-f48.google.com with SMTP id
 a92af1059eb24-12336c0a8b6so555356c88.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 05 Feb 2026 10:11:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1770315057; x=1770919857; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=xG5JhUoaexE0C64Mm8Uw5KiIGD8Iz9i2gDDX0Fbs0Lo=;
 b=kzaGc8GzcdHajHsBWYxpUlHtcRj9J4iAC/PA8Gse++AGlcm3bW6nWUDdbbMCW39sDH
 mLkG6uY7QZ2Ch37Dk1ozGAyTaMcVvQqhZ36MBxkUCZ1yI4WIIFY0OKm05QyHT1Y18Mv1
 tACicrFG58G3D1ULMrnrhlNaCjhaNNKl/cncQxsLjtx9Re8poOYPh8xq/0LFtZtgh0iQ
 +runCyP8XEW/IMjOiKE3HrtyCEAAqs4hZLZZbz3f67tyEWcbcOFT187ybiPdVPHRq06t
 mXFFSWnPKK4m5S6ljaEhr99IOXSZlkwoZh64SrTmgRO3XeSIw9RPFPLCIHC/UuTZKRqD
 oLZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1770315057; x=1770919857;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=xG5JhUoaexE0C64Mm8Uw5KiIGD8Iz9i2gDDX0Fbs0Lo=;
 b=bQjhiiU8EFsb9ZJTmqX0pbZglbyN33U+XqFTx+anuulY5H7iSWnH1gENkn24gkbwyt
 SzVaglo+TuSAYHidlWpOxO9yMNOMpuvuApjUOpcPG1r/WvfLqWO//XUpRIT1Ueh87two
 aPq0TQVSlGvcN0hkz7k6Ef0Xn6aRBHLMX8Ca/BY2uWiMJ00h7Q/4A7vf3Nm/5V/I+k2e
 4BbnjWIumRnBB7CUBSN83N8XS7ck70j6MiBq+vc2x0jIJ3/8qcMU+ClA9sIlWIGb99OQ
 CorIWik/sQ6/i+ao2LuG0P0w865N5QJU4d29Ue1lqFo0kATx7M5LLl0rnE5kkvbjfeNl
 E3jw==
X-Gm-Message-State: AOJu0Yw6AcPYWNSvMZQi0HnayX+H4ibY/lrjzzgED7pwpyozx7Ca05ZN
 JM/veFOuyLSFAqQicXDUQY2kq/UXlXNdaxUWlQ7hTHo6uD3JUithaG0LNgIT1zEgzyttzmBKx9s
 EVy5zGtY=
X-Gm-Gg: AZuq6aLAcc7g1T8jfm6eUNBqpmLB6P824Aymvq/aK10yjDFqrnQCQ85NRhuccGOkQ5G
 EnZ6x/hBagY2TNOSqE5uIX2XCFwEAU7CX7xxBw4KvGoujz2CjkUsoujVCpq4kcHaQQUk4KJHrsR
 Guiua2RgRw6eU5YgXKihco3TjbWiGtELT6JX2aV2xFXsUWCR54683PXkVwguIyjnysz1nnxw8d5
 ydrLRhKStFvlWUMzpg6Lm4a05eU2oC1C8qajQr3d/U02HSPXSdpJLPPdX1lUw5aVqafwgSHmq8B
 xw28TAo8dlb1qiyLyqLLku/CZqofughHI3gOXquAoPhAnU9Lt/pJ5vjtOheH5iJ8Jw+TmB0IUIc
 MSf7d0ZiGqcZf3nzofbhg/Qj7jgkUFL62wSF96tBjh37KFejgcygxoMbgTOlReWnsdx1QVs3XDB
 0hHM1xzdGLLm/FxXVZBwNbTaYRXIfZ7WCtLa5mT7XnuJrXrERVilXdDgg47fijCf8QT+1kylsty
 5ARnyQd6wkAzA==
X-Received: by 2002:a05:6830:6ac8:b0:7cf:da7d:539d with SMTP id
 46e09a7af769-7d448b104demr4271603a34.37.1770313813807; 
 Thu, 05 Feb 2026 09:50:13 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:9c8e:6dc7:3b53:b0b8])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7d4499a49c9sm3827348a34.0.2026.02.05.09.50.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Feb 2026 09:50:13 -0800 (PST)
Date: Thu, 5 Feb 2026 11:50:09 -0600
From: Corey Minyard <corey@minyard.net>
To: Kenta Akagi <k@mgml.me>
Message-ID: <aYTYUZXJjQV1BBAk@mail.minyard.net>
References: <20260205144739.116409-1-k@mgml.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260205144739.116409-1-k@mgml.me>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Feb 05, 2026 at 11:47:38PM +0900, Kenta Akagi wrote:
 > In kernel 6.18.7, we encountered the following panic. > > [164050.860241]
 list_add double add: new=ffff8a5833cd0000, prev=ffff8a5833cd000 [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [74.125.82.48 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vo3op-0003YM-EL
Subject: Re: [Openipmi-developer] [PATCH RFC 0/1] ipmi: Fix double list_add
 when sender returns an error
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
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.61 / 15.00];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:k@mgml.me,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[corey@minyard.net]
X-Rspamd-Queue-Id: AA220F65E2
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 11:47:38PM +0900, Kenta Akagi wrote:
> In kernel 6.18.7, we encountered the following panic.
> 
>     [164050.860241] list_add double add: new=ffff8a5833cd0000, prev=ffff8a5833cd0000, next=ffff8a387b2491b0.
>     [164050.869744] ------------[ cut here ]------------
>     [164050.874698] kernel BUG at lib/list_debug.c:35!
>     [164050.879435] Oops: invalid opcode: 0000 [#1] SMP NOPTI
>     [164050.884742] CPU: 5 UID: 0 PID: 99228 Comm: kworker/5:2 Kdump: loaded Tainted: G S          E       6.18.7-20260127.el9.x86_64 #1 PREEMPT(voluntary)
>     [164050.899481] Tainted: [S]=CPU_OUT_OF_SPEC, [E]=UNSIGNED_MODULE
>     [164050.905470] Hardware name: Dell Inc. PowerEdge R640/0X45NX, BIOS 2.15.1 06/15/2022
>     [164050.913285] Workqueue: events smi_work [ipmi_msghandler]
>     [164050.918865] RIP: 0010:__list_add_valid_or_report+0xb6/0xc0
>     [164050.924609] Code: c7 e8 b1 c3 89 48 8b 16 48 89 f1 4c 89 e6 e8 e1 16 a9 ff 0f 0b 48 89 f2 4c 89 e1 48 89 fe 48 c7 c7 40 b2 c3 89 e8 ca 16 a9 ff <0f> 0b 0f 1f 84 00 00 00 00 00 90 90 90 90 90 90 90 90 90 90 90 90
>     [164050.943787] RSP: 0018:ffffceacac91fdc0 EFLAGS: 00010246
>     [164050.949271] RAX: 0000000000000058 RBX: ffff8a5833cd0000 RCX: 0000000000000000
>     [164050.956665] RDX: 0000000000000000 RSI: 0000000000000001 RDI: ffff8a773f89c1c0
>     [164050.964054] RBP: ffff8a5833cd0000 R08: 0000000000000000 R09: ffffceacac91fc78
>     [164050.971441] R10: ffffceacac91fc70 R11: ffffffff8a7e10c8 R12: ffff8a387b2491b0
>     [164050.978837] R13: 0000000000000000 R14: ffff8a387b249190 R15: ffff8a387b2491b0
>     [164050.986229] FS:  0000000000000000(0000) GS:ffff8a77b459d000(0000) knlGS:0000000000000000
>     [164050.994581] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>     [164051.000597] CR2: 00007ff95841be6c CR3: 000000063b022001 CR4: 00000000007726f0
>     [164051.007997] PKRU: 55555554
>     [164051.010970] Call Trace:
>     [164051.013690]  <TASK>
>     [164051.016055]  ? mutex_lock+0xe/0x30
>     [164051.019724]  deliver_response+0x59/0x100 [ipmi_msghandler]
>     [164051.025495]  smi_work+0xa0/0x370 [ipmi_msghandler]
>     [164051.030563]  process_one_work+0x19d/0x3d0
>     [164051.034844]  worker_thread+0x23e/0x360
>     [164051.038873]  ? __pfx_worker_thread+0x10/0x10
>     [164051.043423]  kthread+0xfb/0x230
>     [164051.046850]  ? __pfx_kthread+0x10/0x10
>     [164051.050872]  ? __pfx_kthread+0x10/0x10
>     [164051.054894]  ret_from_fork+0xe9/0x100
>     [164051.058826]  ? __pfx_kthread+0x10/0x10
>     [164051.062852]  ret_from_fork_asm+0x1a/0x30
>     [164051.067065]  </TASK>
> 
> Because kdump was not properly configured, I was unable to inspect the
> vmcore, but based on the oops and the current implementation, I infer
> that the issue occurred via the following mechanism.

A fix for this is already queued in the next tree.  I should have it
out soon.

-corey

> 
> - The BMC becomes unstable
> - Some kind of msg is queued in (hp_)xmit_msgs and smi_work runs
> - (Because the BMC is unstable) intf->handlers->sender returns an error
> - deliver_err_response() queues newmsg into intf->user_msg
> - goto restart, but since intf->curr_msg is naturally non-NULL, no
>   dequeue is performed from (hp_)xmit_msgs
> - The same newmsg as before the restart goes through the same flow and
>   deliver_err_response is executed, leading to a double add
> 
> I took a quick look at the BMC logs and there was a watchdog BMC reset
> around the time of the panic, so I'm pretty sure the BMC was unstable.
> 
> I'm not sure if this is the correct approach, but I submit a RFC PATCH
> in the spirit of a bug report. I would appreciate your feedback. You
> can completely discard mine and fix it as a separate patch if you
> prefer.
> 
> Thanks.
> 
>  
> Kenta Akagi (1):
>   ipmi: Fix double list_add when sender returns an error
> 
>  drivers/char/ipmi/ipmi_msghandler.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> -- 
> 2.50.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
