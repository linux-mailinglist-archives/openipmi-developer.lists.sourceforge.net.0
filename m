Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rxxbFPwcIGpAwAAAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Wed, 03 Jun 2026 14:24:28 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DAAF563775B
	for <lists+openipmi-developer@lfdr.de>; Wed, 03 Jun 2026 14:24:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=iQTRdqBG;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=E9b4o35K;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=USpDbQFK;
	dkim=fail ("body hash did not verify") header.d=minyard.net header.s=google header.b=fsaFwTTN;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=fail reason="SPF not aligned (strict), DKIM not aligned (strict)" header.from=minyard.net (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2MUnguD+xIfvvFBW8WPDW8HN3iwm64VU0jMnt4AzUng=; b=iQTRdqBGCV2Uabn1al1uiJj6op
	EcEtqVDSAM5ZOYztmYL8NiJg8A45vIUu92xYQdVxvMw3qiw5hd6bDifO9STDE1D2c7SL6DSby4+gC
	pqqYcGNbieAoAJU4IZOxOcP/DVFiuHDPlMgWAEF8IVvhR6pli5BrAp+/YJ82swdvRT6Q=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wUkdv-00056l-Lx;
	Wed, 03 Jun 2026 12:24:19 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wUkdt-00056d-J9
 for openipmi-developer@lists.sourceforge.net;
 Wed, 03 Jun 2026 12:24:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=df3sqTjVTq2Z9AgKRAsUVI3Sets8Wgdw4AUE2oIw9s8=; b=E9b4o35Kc7im2irdYcQ8KbvJ/I
 4JirCXJe8GfyqxQZY8t56/GmfdacT2L5hO+jV0G6F5hj495yPLmYRkTgqUJm2K8KsXpayCxaLm6g8
 o4rmdt3mLhv82H9Kj0CTyE1w1U4NEwjXPLFu9c6MNGTBHMeqXiYuENmkPg+irQXQQPqo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=df3sqTjVTq2Z9AgKRAsUVI3Sets8Wgdw4AUE2oIw9s8=; b=USpDbQFKaJ95LH9APrvYheMaWo
 1pTpc+J4qRXyx7Tjpgv3BBRtXueHCGRgmcqj5JfI4uU0DzkUiruzcDCnOmSrWu5LdT+ErmTkMMTis
 LHOuQoBL7AV66ctKSYgPNtJ/34u4ky+7nK1o7mJVJDKuw46F7uPWeJQYefyoMrlVPQtY=;
Received: from mail-qk1-f174.google.com ([209.85.222.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wUkdq-0005SE-3S for openipmi-developer@lists.sourceforge.net;
 Wed, 03 Jun 2026 12:24:17 +0000
Received: by mail-qk1-f174.google.com with SMTP id
 af79cd13be357-915336b83adso572380885a.2
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 03 Jun 2026 05:24:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1780489449; x=1781094249; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=df3sqTjVTq2Z9AgKRAsUVI3Sets8Wgdw4AUE2oIw9s8=;
 b=fsaFwTTNnQMXM4jMSvQe2c7uRWWD8DCczayzwPi8mdvk22UJdW2rcG/FDvvCndl4iZ
 Zqx1UBLt4NSQsPhG/sxXm4diZ03XftOXO3VULFA0epqThmtB/E1bapRaxksj2XniwiGB
 +yN/tQ+bpHrnLXEkVDS7cWdpU018OpWlC8lWqjeMdIqXmdhEZqbp3IZKzd6Wjy7giB6C
 pf5NxBcwqOftr9w9cFGq5Hdf2hwWly8aWHw7VIbwqy7HJlMlRj7QEd47x2PA26u1b3aq
 tej9iwxSLIiRHFQgNqssqpE7GOWd4LMrtXzch6DXjl3i4CCeWi3kGI3muPLI80GUXI3t
 BCVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1780489449; x=1781094249;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=df3sqTjVTq2Z9AgKRAsUVI3Sets8Wgdw4AUE2oIw9s8=;
 b=CPtN19ZZN5lh3Yl+csLNb+ga6B/kvjoflfHIiCe/j2g70YVS9V57wY29NSt0f2NFkS
 fh0TIu8t7mBJ3ieRPSwAMAhfWvFCDFhUapBLkPnVmtETBAfV5K+gWaZonAPbA3pmGNbr
 1KHrIT1Ahw7lypfgwtDpuAvLRmhL6JC7rOTEWgVOetBnfen4jOYu78Cd8lRbZlCxMqsU
 tWXBENzUjNnIZqUJmaJXDpP6gKXLROwuKt4xdU+OgyGm1CBUs6EGlhkrUBRm1OShiA05
 JcZYNq3OvMOkG1LUFyPHmoavyoRBZNpCrw+Qv4zmF7ALlMzp0d+0gIs3oYjFvqlsGL49
 BVeQ==
X-Gm-Message-State: AOJu0YxLhB0R2DksmIDTYXJFeHOh8F7Bi9roIc954AAeCmX5HvAMRZP2
 ouyjH2m8jMrqZhvcrJncOoN0Ma03rprWQQ8dDQpR4dDrMxgUr+6oS572Og+hE4SqRU09s4mTr5E
 dpXo6
X-Gm-Gg: Acq92OGE0IouYKwQ4kRAxPwicCzNzY0bIpPdMLwwljep5wITh9Y+O3obhTqCleAOgly
 jyPuBd1yqQEptDuP26H46B8VrqutvQH7kWcGa+pMPT0DdLNPkQvCKq/S4yj/TqpUsSFpyN9rI/Y
 T7oJA0SPwqJXlTRRf3x19mg6LtY7JsrEJDQUg4jwRlmOIa64v4teFBQDfbVa43mbdu2rW5N0D+A
 zvdmIP1X17T9v98FMkLkHl0iqA6v+o6hzkPI2EU3A6Cy2pJSz1lppAI/etE9yUE+xh9d6xD7KSp
 hp5WUr5lsTzyd3zJ3T6xCQTxeSCq+sZfzHPW+3uXQQHuLAaa22oIHOnRw0sokFi6M/77vdo2ucd
 vcyY/TcKFMDt8Om05AP9rpdtt+qwFR8jRDT4UN7uGVmDu6Vf6s47i553pP4cGc8IWYJBKqip2qb
 xaabXNW8oVKqAaI9bNyeZu6mkTL4i1vvT7YoODvmutEfF4gP+EqIpfmqmOhMGvhqysNA0bVj2JL
 sBlXX3AbSwNrLhxP/8MlavC0A==
X-Received: by 2002:a05:6830:378f:b0:7e1:cba6:9837 with SMTP id
 46e09a7af769-7e6e94dbc52mr1614499a34.6.1780489438403; 
 Wed, 03 Jun 2026 05:23:58 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:144e:c181:b1d6:32f9])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7e6e746a50bsm1580331a34.2.2026.06.03.05.23.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Jun 2026 05:23:57 -0700 (PDT)
Date: Wed, 3 Jun 2026 07:23:53 -0500
From: Corey Minyard <corey@minyard.net>
To: Wentao Liang <vulab@iscas.ac.cn>
Message-ID: <aiAc2QgS6kI35bii@mail.minyard.net>
References: <20260603120634.3758747-1-vulab@iscas.ac.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260603120634.3758747-1-vulab@iscas.ac.cn>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jun 03, 2026 at 12:06:34PM +0000, Wentao Liang wrote:
 > When a caller provides a `supplied_recv` message to i_ipmi_request(), >
 the function increments the user's `nr_msgs` reference count. If [...] 
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
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.174 listed in wl.mailspike.net]
X-Headers-End: 1wUkdq-0005SE-3S
Subject: Re: [Openipmi-developer] [PATCH] ipmi: fix refcount leak in
 i_ipmi_request()
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vulab@iscas.ac.cn,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[minyard.net:from_mime,minyard.net:replyto,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:from_smtp,lists.sourceforge.net:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DAAF563775B

On Wed, Jun 03, 2026 at 12:06:34PM +0000, Wentao Liang wrote:
> When a caller provides a `supplied_recv` message to i_ipmi_request(),
> the function increments the user's `nr_msgs` reference count. If an
> error occurs later, the out_err cleanup path only frees the recv_msg
> if the function allocated it itself (i.e., !supplied_recv). In the
> supplied_recv case the cleanup is skipped, leaving the reference count
> elevated. The caller ipmi_request_supply_msgs() does not release the
> supplied_recv on error, so the reference is permanently leaked.
> 
> Fix this by explicitly reverting the reference count operations when a
> supplied recv_msg with a valid user pointer is present in the error
> path: decrement nr_msgs and drop the user's kref.

This looks correct, it's in my next queue.

Thanks,

-corey

> 
> Cc: stable@vger.kernel.org
> Fixes: b52da4054ee0 ("ipmi: Rework user message limit handling")
> Signed-off-by: Wentao Liang <vulab@iscas.ac.cn>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 869ac87a4b6a..5b9d914cc7a9 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -2347,6 +2347,10 @@ static int i_ipmi_request(struct ipmi_user     *user,
>  		if (smi_msg == NULL) {
>  			if (!supplied_recv)
>  				ipmi_free_recv_msg(recv_msg);
> +			else if (recv_msg->user) {
> +				atomic_dec(&recv_msg->user->nr_msgs);
> +				kref_put(&recv_msg->user->refcount, free_ipmi_user);
> +			}
>  			return -ENOMEM;
>  		}
>  	}
> @@ -2420,6 +2424,10 @@ static int i_ipmi_request(struct ipmi_user     *user,
>  			ipmi_free_smi_msg(smi_msg);
>  		if (!supplied_recv)
>  			ipmi_free_recv_msg(recv_msg);
> +		else if (recv_msg->user) {
> +			atomic_dec(&recv_msg->user->nr_msgs);
> +			kref_put(&recv_msg->user->refcount, free_ipmi_user);
> +		}
>  	}
>  	return rv;
>  }
> -- 
> 2.34.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
