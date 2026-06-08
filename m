Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bfMDAqjYJmrflgIAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Mon, 08 Jun 2026 16:58:48 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B682657B62
	for <lists+openipmi-developer@lfdr.de>; Mon, 08 Jun 2026 16:58:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=hpT08rj1;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=dkBga8BT;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b="gC/syeVJ";
	dkim=fail ("body hash did not verify") header.d=minyard.net header.s=google header.b=A4C6nGAi;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=fail reason="SPF not aligned (strict), DKIM not aligned (strict)" header.from=minyard.net (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qgneRgdRsN3LQ1iBw+6hOb+swb1ef+1LBetd7L1uKqo=; b=hpT08rj1QDAghJbcDoxbnHL5JM
	ID3Q00TwW2oQ1ieM0cg50lLA2H87RTqqWHohmS5psFVePyVzaC3xCnrVSBE/S+cATxwfiW3eGqJKL
	qCYYnj2vZFPwXTFzT1HKMx5Pg9FTxzg5zykttyUIxESWdGsbtbPy2Yqhzzk7radrKZ8M=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wWbQx-0005HN-3l;
	Mon, 08 Jun 2026 14:58:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wWbQu-0005HF-9d
 for openipmi-developer@lists.sourceforge.net;
 Mon, 08 Jun 2026 14:58:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ynytDHRd76bMUHNmTQQewW2EWsRcgHarOHL+9T2G+3M=; b=dkBga8BTL8csaAmwgGgwwxtg8S
 aA3fcgN6mhQLCILkW3yolIWcOoGg3VPHFzjSZ/ydF6jvo/yOidJrIwVhgJMAtBCnBtQZMnEv/DAHZ
 sZsao0UaKV9aOzRAZfMMLpfbHplDipt07kIa9FHNjSyBaWy/V+BHK6BH6F4JrW9j3Jao=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ynytDHRd76bMUHNmTQQewW2EWsRcgHarOHL+9T2G+3M=; b=gC/syeVJ3TJkANS03gkHWcPSuD
 LkAZZ+IDmb2tiKcI+FhMVlK4siyUPhGtPfTy1UV+vO4Zbw3hnxw64zJxwgWP2OZp1E0QzPIHtgEjb
 /Q2v+oOK20w7olOJ+SWNjh7SVgy9lSfvplaEuiXUPo0v75XBUkqI7j6Fa3F7HJJvVIUY=;
Received: from mail-oi1-f171.google.com ([209.85.167.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wWbQs-0006jh-Uj for openipmi-developer@lists.sourceforge.net;
 Mon, 08 Jun 2026 14:58:32 +0000
Received: by mail-oi1-f171.google.com with SMTP id
 5614622812f47-48657fc84a3so3847734b6e.3
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 08 Jun 2026 07:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1780930706; x=1781535506; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ynytDHRd76bMUHNmTQQewW2EWsRcgHarOHL+9T2G+3M=;
 b=A4C6nGAitUx6iz4rTboqaweNz2zLvXh20vl1j6wDxmiKIqj2zQdIX1qJzbeIGu+ci9
 nLvLu+u5Ne4sxYEqkWgn/TFxSEXtJY19i+KK2OfuB5bCMqqPGRCWx5ThBdFHGBp5rEfl
 Io4ejXOKEbUL3OP3mRnoLDCOy4EXbDtnW3Dp3f50kuaYEyCLnC7N1lYHZMapwZYLkNgO
 2kxddfVhbJGhr1QsG6q8t05DyGNjrskpInVu2gr6IGWcjQDVGjWufKj2tSW0YERpwncY
 X3oVYY6f+Yfdl4Spne5cLNGuellc69P7Tw0Eo8EMyCP53xcFdX+jYAssIAEJb/VWjCwX
 mVTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780930706; x=1781535506;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=ynytDHRd76bMUHNmTQQewW2EWsRcgHarOHL+9T2G+3M=;
 b=Quyyfd368EvQ9H7ot7qXCBcMxdcTP5/Qm9XMgDzCfPVKkdTdl9YEgOlxkHRkWEkHBN
 QpM0Nqz34NqZ/dXKtpFRp7t8kkHhhzD+2sejnhGSFlpGs705zrbL9dH1V8LIGbduqXtY
 tt5kyldQPtt1sPg33oDZaQOzNIYq/xVUWVn0MmgDZW4YCLDC1pqL6aS6hEoXpY9kKwsM
 StMdME/VFHd1wDMaIoEMmI5NGf4wQfSM9hRcW3y5c4inCi5YqBTF4IsVAlNYQ2VSjDAA
 7R+OYOUbSUwQNtv+NMOhf0czEmdRVSKEn9hfhD67Xw+nSVIGOSPys632zkmj0AxWJ9Rt
 o6NA==
X-Forwarded-Encrypted: i=1;
 AFNElJ8IckoKdQjnsTFMEJspyZw4b1roHiSwvohEn9jkVYoaX967Tdb1ydzwIdfzU7nrP0AGUmB6ZX5npu4uAxus4kSh5Xk=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzZCcmS9q4rECs+g68DxSxlV9WYc4Rzc+gqkHCK90+ZTy6UDyR5
 2yTUVroOjzUIc+wvnVF/47Tp/+3R3bpfz/5eiqm1087te2jvIEdrBsik9ypWSzJcuTs=
X-Gm-Gg: Acq92OEdWtgDUxbzeFRwotfEihwBwwno5s0YEA/NW0LhrAnZ7Bz62rpQaoMYtydmilB
 v3QWHld7yfp/FkofJsj0q51zODJIeeXBV+G334leAMITtdVOuyiRxoBy45oh1OnS3Dw4BRUSCsW
 Opifet/dJq6g/47fukO6ByJv4N4GV1ZZpUVPhSlwZRuHmRFJ2t5AcGCnaA/c7PmuuhHkMlB8luY
 OlSHuikLwwOtGh9szMlUvf+gRtTb077NP9oazoA9drkLIhCkJSNAVUDll8mzFqDQOZt293/N+TI
 DjEytiNMb3rRjw47ctNEnxwCWlB6ty8gus+n30uUzizfwZCQK7oFj83zfr0D9Wmlv8WOcIjIXao
 C5/GHz5DCBhtVfcnWX4vuk8ZXYTNc5aHrtZv1cb0V93hMeRIdVMy/s69+gKrDQJvo05eq0tZ5iR
 qMyRXV2pwJ6+84vdibJNKMO9uF5tcTM5bPLVWLpiE0kTEVXSrk8IUIIjB0+SCQao5ud0ola3wEW
 tAs9lBSx4ofFg3ucqlbd6aaV9I=
X-Received: by 2002:a05:6808:4f0d:b0:479:db65:8dbc with SMTP id
 5614622812f47-4868df59fd2mr10212483b6e.30.1780930705722; 
 Mon, 08 Jun 2026 07:58:25 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:cbbe:5d8b:b4d0:52d4])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-4865b745773sm14464153b6e.6.2026.06.08.07.58.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2026 07:58:24 -0700 (PDT)
Date: Mon, 8 Jun 2026 09:58:19 -0500
From: Corey Minyard <corey@minyard.net>
To: Rui Qi <qirui.001@bytedance.com>
Message-ID: <aibYi72tthY8VX8V@mail.minyard.net>
References: <20260525063235.990101-1-qirui.001@bytedance.com>
 <20260608112000.1-qirui.001@bytedance.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260608112000.1-qirui.001@bytedance.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jun 08, 2026 at 11:27:54AM +0800, Rui Qi wrote: >
 Hi Corey, > > I'm following up on this patch which was originally submitted
 on > March 25 and resubmitted as v2 on May 25. I haven't received [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.171 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1wWbQs-0006jh-Uj
Subject: Re: [Openipmi-developer] [PATCH v2] ipmi: Fix rcu_read_unlock to
 srcu_read_unlock in handle_read_event_rsp
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
Cc: stable@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Corey Minyard <minyard@acm.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:qirui.001@bytedance.com,m:stable@vger.kernel.org,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,m:minyard@acm.org,m:gregkh@linuxfoundation.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.minyard.net:mid,bytedance.com:email];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[corey@minyard.net]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2B682657B62

On Mon, Jun 08, 2026 at 11:27:54AM +0800, Rui Qi wrote:
> Hi Corey,
> 
> I'm following up on this patch which was originally submitted on
> March 25 and resubmitted as v2 on May 25. I haven't received any
> feedback so far, so I wanted to bring it back to your attention.
> 
> To recap, this is a one-line fix for handle_read_event_rsp() where
> rcu_read_unlock() is incorrectly called instead of srcu_read_unlock()
> on the error path, leaving the SRCU read-side lock held.
> 
> This patch is specifically targeted at stable branches (v6.12 and
> earlier) that still carry the original SRCU-based locking. In
> mainline, commit 3be997d5a64a ("ipmi:msghandler: Remove srcu from
> the ipmi user structure") has already restructured this function to
> use a mutex, effectively eliminating the bug. However, that commit
> is part of a larger SRCU removal series that is not suitable for
> stable backport.
> 
> Since the affected code no longer exists in mainline or your
> for-next tree, this patch cannot follow the usual path of being
> applied there first and then cherry-picked by stable. Could you
> please review and provide an Acked-by so the stable team can pick
> it up directly?

I can give an:

Acked-by: Corey Minyard <corey@minyard.net>

on this, as it is obviously correct.  However, it might be better to
backport the changes removing SRCU.  Using SRCU here was a mistake to
begin with.  But that might be too big a change.

-corey

> 
> No changes since v2. The patch is reproduced below for convenience.
> 
> From: Rui Qi <qirui.001@bytedance.com>
> Subject: [PATCH v2] ipmi: Fix rcu_read_unlock to srcu_read_unlock in
>  handle_read_event_rsp
> 
> Fix a bug where rcu_read_unlock() was used instead of srcu_read_unlock()
> in handle_read_event_rsp() when ipmi_alloc_recv_msg() fails.
> 
> This mismatch leads to an SRCU read-side critical section imbalance: the
> entry uses srcu_read_lock(&intf->users_srcu) but the error path
> incorrectly calls rcu_read_unlock(), which is a no-op for SRCU and
> leaves the SRCU lock held.
> 
> The offending code was restructured in mainline by commit 3be997d5a64a
> ("ipmi:msghandler: Remove srcu from the ipmi user structure"), which
> replaced the SRCU locking with a mutex in this function, effectively
> eliminating the mismatch. However, that commit is part of a larger
> SRCU removal series that is not suitable for stable backport. This
> minimal fix addresses the SRCU imbalance for 6.12 and earlier stable
> branches that still carry the original locking scheme.
> 
> Fixes: e86ee2d44b44 ("ipmi: Rework locking and shutdown for hot remove")
> Cc: stable@vger.kernel.org
> Signed-off-by: Rui Qi <qirui.001@bytedance.com>
> 
>  drivers/char/ipmi/ipmi_msghandler.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 188722ec0337..41ae4dac4eeb 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -4395,7 +4395,7 @@ static int handle_read_event_rsp(struct ipmi_smi *intf,
> 
>  		recv_msg = ipmi_alloc_recv_msg(user);
>  		if (IS_ERR(recv_msg)) {
> -			rcu_read_unlock();
> +			srcu_read_unlock(&intf->users_srcu, index);
>  			list_for_each_entry_safe(recv_msg, recv_msg2, &msgs,
>  						 link) {
>  				list_del(&recv_msg->link);


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
