Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /AxMFm8qPGo4kwgAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Wed, 24 Jun 2026 21:05:19 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D56A6C0DC1
	for <lists+openipmi-developer@lfdr.de>; Wed, 24 Jun 2026 21:05:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=dfqNzGmN;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=lcb2Rgkl;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=Q7xkYNPU;
	dkim=fail ("body hash did not verify") header.d=minyard.net header.s=google header.b=Wj4FqJWh;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=fail reason="SPF not aligned (strict), DKIM not aligned (strict)" header.from=minyard.net (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9wn7bQVxMKf5Avgc4K43IOjznFNr8fSdY0s5Jj2tFCU=; b=dfqNzGmNBzmbHDG0klFkiCWm4Z
	zwdkz29029ZaTBY4ag3CLXDAynFWWeEcRQ3fvBn5WN6EjmVUohX7CQR842r8uWvKm7kCZbQW/r5er
	pNTUTVYFHJoW+x7B5TdLxdHMNtpSGgKGqzVU8LX/FniGhj9Pt5G5H9noWFpw1uFQINXA=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wcSuN-0000Sr-4j;
	Wed, 24 Jun 2026 19:05:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wcSuL-0000Sk-OI
 for openipmi-developer@lists.sourceforge.net;
 Wed, 24 Jun 2026 19:05:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aF6y+z3WzOF0NGX8rlzaawDifQ+ZciBxK/FOErWZdVI=; b=lcb2RgklVN0iKdWqvcOgFi0SX9
 FvYgOi2nAMrSHk4DpkUv8on9xIzDBPu34CVTji80X0Sv0NcgkWFdmw/LDIsvZqrH/0O7GCeclOM2f
 QRyevntCI38Mw6agMeNq7sL9/2Qp7YQyae/6/cnHnRB+XqAw1SeYbibvcDO8nXmeV84E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aF6y+z3WzOF0NGX8rlzaawDifQ+ZciBxK/FOErWZdVI=; b=Q7xkYNPUlB7bz3OLFDO1TO+ZSo
 oA5bFz8n+sAshaupUj73COvcNOCC+Cwluy0vBgQSCUKBa3X5t1pHEp1G07TcTnSfEcpFc/VYx4l6U
 pg5bjtMKMJF3fEb+yQL8t1LN10XXRLxFlfNHyWtpNxUyxirceToMgDXWsnC8wWSA0Q4E=;
Received: from mail-oa1-f45.google.com ([209.85.160.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wcSuH-0005px-V4 for openipmi-developer@lists.sourceforge.net;
 Wed, 24 Jun 2026 19:05:10 +0000
Received: by mail-oa1-f45.google.com with SMTP id
 586e51a60fabf-43d2c7b5a6aso1064752fac.0
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 24 Jun 2026 12:05:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1782327896; x=1782932696; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=aF6y+z3WzOF0NGX8rlzaawDifQ+ZciBxK/FOErWZdVI=;
 b=Wj4FqJWhsYiZXQ2AfUIQEEeak/AG25Yfqlu5LKeac5lY+qSuyMETIzZJHlaMDr9BIq
 omvy9c/+MwRP51rv5avzpSbWy7sr4bW+QeKmErdqNHCebrqsXUASnw9ShfnWATMn80Av
 di+Cb+qiMzvD6wOfx4pQFqCsPJT6vRpgGaMh4l1UmIahvaOw+dOPAN4pwJSbLrtVcMo7
 G4XxqmPXubsjfm+S+m9qz4ZRnusw2v/2dmLj3U/FxSl0EnCP7yRTnRVYb6Wok6PLYBz7
 est92vwmgTj6qD5CgTwVPQfP82dHLoIxRC8q5sbGwh3RyJK+lX5ES7me6mnuZ3mRnU3E
 2QqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782327896; x=1782932696;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=aF6y+z3WzOF0NGX8rlzaawDifQ+ZciBxK/FOErWZdVI=;
 b=iYuXvBRTZuQ1WVRY4haf+FSDfWHY3tkagmeNL+HsbzSxVOjBitnDxe4/fcCsPZqIKQ
 Rg9RYf87IOJH0iYvj5F4G1x1dI2XzjmsowbeimsRyPV+j/UqHvGje5rkyqp9HMTWqVMX
 QTO36B0cxgbfDHdh6qQlhBZFr8bD/JhCsL4RstSMU76ICdZpI5r1HrcYrLAw8Yp6gmCv
 XEKZIRIJa1cMQ2iIa3vgyvCuSwRnllitzyfUVEnFmhcTfVqKVWbStQEiGRDC7wu9qJwb
 EOSryIoihV3jKmOsAXmC9eT2+P0p3E+ewt46TOzNxmvg8c7Yfq/BOjldYuZgczu8Xmv/
 wdvw==
X-Gm-Message-State: AOJu0YwjDzG5wx3cV23EcB8mfHx7pyKkpjaTs2ZtEPYtMUhIDOffaXOl
 c/xnUcYOKmer50Sni+F8QjIb/NDpDxBJY/hf8OGHMQO4EcSIHiVD3wW1JFExGUjHqYk=
X-Gm-Gg: AfdE7cm7bGg5ODHguK0t430Ry9bqMO710BR2+TzH2zeCc6CFMMyoHtnd38Eqs3bB2Zo
 40BhzdX8mJ42upiJVBTMpOcvDfdtVS5YyJ/9BWKoxxppENXCCPlcu9828xF78uBY5PNhKoobEZI
 4w9L0QPCl6gv7rY9Pyfrn+pTxK86o2kF93NreLRiYtg6YydcrL8pIyXINGnXiLzsiAuDG9uKOzy
 Tr6YX8NN4w9WTSy9zW/FT725ZMDgVeIgUTeb8Z04RAcK4JeG52r+y7w1npMpyTgzyjkghmDC5HD
 X3mc7OymqM2Dr3L+FKMIhl7IbCKkOPnswS/eEF+ZZWvPoEPGPmFKVcjN6Xx98YWlZ9S7qv57wqA
 y7DONHFAJc7B0sRu0EtLI9JcXaZqauDdrwMK5yhvkvzq6L4KHkYvE5Oidoj783wjA6F2ejr0Ll5
 p/UW5T5nqXrX+Rs2Eg3VE6FIZGA2MsguIqL3TCdfLRnaKZXq8gUrEYB1aBx0pSHd9Ui//IXXr4K
 AL3i/FnY+DXMhiN4oxseV1cJJx9v+BXdRQ=
X-Received: by 2002:a05:6870:3c8a:b0:447:3081:a4c5 with SMTP id
 586e51a60fabf-447dcdd5400mr3680386fac.10.1782327895699; 
 Wed, 24 Jun 2026 12:04:55 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:53:4df7:8ef0:c11d])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-4472ec5fd4csm11382458fac.2.2026.06.24.12.04.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Jun 2026 12:04:55 -0700 (PDT)
Date: Wed, 24 Jun 2026 14:04:50 -0500
From: Corey Minyard <corey@minyard.net>
To: Yousef Alhouseen <alhouseenyousef@gmail.com>
Message-ID: <ajwqUuGNs5oIAi83@mail.minyard.net>
References: <20260624175353.8592-1-alhouseenyousef@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260624175353.8592-1-alhouseenyousef@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jun 24, 2026 at 07:53:53PM +0200, Yousef Alhouseen
 wrote: > ipmb_write() read message fields before validating the length byte.
 > > A zero or short write can read uninitialized stack bytes. > [...] 
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
 [209.85.160.45 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1wcSuH-0005px-V4
Subject: Re: [Openipmi-developer] [PATCH] ipmi: ipmb: validate write message
 length
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alhouseenyousef@gmail.com,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_REPLYTO(0.00)[corey@minyard.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.minyard.net:mid,minyard.net:replyto,minyard.net:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9D56A6C0DC1

On Wed, Jun 24, 2026 at 07:53:53PM +0200, Yousef Alhouseen wrote:
> ipmb_write() read message fields before validating the length byte.
> 
> A zero or short write can read uninitialized stack bytes.
> 
> A length smaller than the SMBus header underflows the block write length.
> 
> Require a non-empty buffer and the minimum IPMB request length.
> 
> Also require the length byte plus payload before parsing the message.

Yes, this is in my next queue for 7.3.

-corey

> 
> Signed-off-by: Yousef Alhouseen <alhouseenyousef@gmail.com>
> ---
>  drivers/char/ipmi/ipmb_dev_int.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmb_dev_int.c b/drivers/char/ipmi/ipmb_dev_int.c
> index 2fe1d205c..dd750392c 100644
> --- a/drivers/char/ipmi/ipmb_dev_int.c
> +++ b/drivers/char/ipmi/ipmb_dev_int.c
> @@ -141,13 +141,14 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,
>  	u8 msg[MAX_MSG_LEN];
>  	ssize_t ret;
>  
> -	if (count > sizeof(msg))
> +	if (!count || count > sizeof(msg))
>  		return -EINVAL;
>  
>  	if (copy_from_user(&msg, buf, count))
>  		return -EFAULT;
>  
> -	if (count < msg[0])
> +	if (msg[IPMB_MSG_LEN_IDX] < IPMB_REQUEST_LEN_MIN ||
> +	    count < (size_t)msg[IPMB_MSG_LEN_IDX] + 1)
>  		return -EINVAL;
>  
>  	rq_sa = GET_7BIT_ADDR(msg[RQ_SA_8BIT_IDX]);
> -- 
> 2.54.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
