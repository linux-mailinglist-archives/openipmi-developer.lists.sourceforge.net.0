Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QDJqFG8kD2paGgYAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 21 May 2026 17:27:43 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E4C5A852B
	for <lists+openipmi-developer@lfdr.de>; Thu, 21 May 2026 17:27:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=udvTYT23VJ1UfTJPyCxEPYB5KXceNMUrHjVZVsaeTAM=; b=jD0Rbwaqt2LRNRvrM6vhsLLbTK
	4QYs9mELbSkjts6Qj0SItroIfOR6kLuK0LMmQbkxPVS+HOYPDDRwoycixoYuRs/pbRUQ/83EWhAo7
	8KwsJuAs8gXIwGmmPRXfRMLB/lnTosSsdSImwOA2mX//Z6R3GKqh9a60O7FOfTTXsXh0=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wQ5J8-0001hQ-I2;
	Thu, 21 May 2026 15:27:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wQ5J6-0001hJ-W4
 for openipmi-developer@lists.sourceforge.net;
 Thu, 21 May 2026 15:27:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mAuZxHOOVqtbe7EvwIW4p7uGjThIX0WoLkEbWijMiq0=; b=YFWpfm4OTeVrSGeBoU4koRN6UG
 dk9nQ8pzse68hy2bg75Mg18cx6SiUNNNjvkehQ/GNNDhP/GPogMSwquyK3eW3yhFaIFJtZz8/wFmr
 vC6Sy9eSxpI2RKv90ChijB91Nm68p9pVKCg+KaFE9sxG7ky0fu1+NCgEpcN0DaXYOB2w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=mAuZxHOOVqtbe7EvwIW4p7uGjThIX0WoLkEbWijMiq0=; b=GZrsfegZG4sdwnxWh8hUFcGc9y
 sRLKeA+eJgpKfEzFhSYVzouDjZmhinW3ySvTixqWEZVltoIcUKvooYYx+mPgKdD09aqLZlSLsp+mS
 Aw3sbz/vSHXZOP5Y//cvUlwrdJXJquvIgrgmEzJ6JAbTnRTv0bfY86fMHwHEpcCjXX9U=;
Received: from mail-qv1-f45.google.com ([209.85.219.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wQ5J6-0003XQ-8y for openipmi-developer@lists.sourceforge.net;
 Thu, 21 May 2026 15:27:33 +0000
Received: by mail-qv1-f45.google.com with SMTP id
 6a1803df08f44-8acb09ddbf6so113012606d6.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 21 May 2026 08:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1779377242; x=1779982042; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=mAuZxHOOVqtbe7EvwIW4p7uGjThIX0WoLkEbWijMiq0=;
 b=NyAQGoVk5dE4ve3LFCpEl62rcm1UWX1mjH8vnlDXCYEDR3j4oClzPKAJGRE/g9m+0L
 IXb00WLqZSxbQ5NZogvWvRIdNN0mr83SXNkueXdLN9HVSXQRt5FihxEby8xrxEf12VqP
 M6GUqXlGQ+tVM9eJYkgIMVN3fSa34z+O4AwgGOQXthDLcveWHAyin/OEP7+UPqzMBt++
 kHGc47OHYKIaETCvEQvynB0+PqYHkR77B5if9beeDJFvLY/f57h5vuXkItO13lExdL/d
 rd6vZHM9m7aAt9K2dxSfsk41XA8W+kdyC38u169IW814vxCY1vk2NJWbfJPOr1MDAlX4
 BPPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779377242; x=1779982042;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=mAuZxHOOVqtbe7EvwIW4p7uGjThIX0WoLkEbWijMiq0=;
 b=Pe/0VY7EGRd9LPaJKYAqRIqQesRC7ELJYCXnFM4CixCpOTUpCDZPawrxxWPHXpMQS0
 cus3ZaS9no0kHEaBK3/DFMbUWbtMSWrYH4Oq0hCFvqg/Zg0EaEInXGxYWH0s3uoPTMhY
 ixRw4FfQ5XIyFgwHbjrG1mfa5nH8XLTlTTSTCya+YizFxB0IhBH13zTTjEIqFEW05OaW
 tB2xK/yg22pwRIAbzlPR70NrQmxHhvv053ey0mqy3DfosWUiui1Ee4VxVwX9O5RtJ53e
 IziPHzMwYkuA+43rDHcaGCaGMoWxciiM0J7kIQU1FMrbI3awvTDMErPRyAPRA3r01hba
 jBRg==
X-Forwarded-Encrypted: i=1;
 AFNElJ+2eJ7C/NrVobhoUym/1HJBSyLjkNGX/uAXY68n0U/lsvxi4LcUcx9qevuGD4q6DbPQsmEuzS+lf6waMDkrlScD8Fg=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwKtKS0RG4Ee1CIE5YgQD6hCJvRCJQF5sKyIIEuZmIBL0EMPH8R
 nOlxty5Kq0tpHi2RCH1WCh3U6lgkzzX6kw73CTgsdSIfC+TtGhsqX9v5Gj7OkZFZkEkosJWfED8
 CEpB8
X-Gm-Gg: Acq92OGja2W53g00spiLG0BocBgv+NYm5R+Ly3VcDfxL/1gAS4PifJMMlnGTYF4osmV
 9UlzwSiLOPmuj5Fby/lOoKolUhhHRoFXHn5nJmFueqvxwSKEVu15MyoWBLDOtI55L6K9i4WWqHU
 fYSWqWGmQIdz1r9afZikhaLvAa3GoXFjv4ijuZR7Jjy8M7pIY5qhNmR6FDf2RaiGdWTdeRU0UjL
 niweZlbVxS6ORhOcpC+MTmWUZTvi8KjMrgKJi42BdqdY13zBDEXT0wB8RTlbFLjJC2HVazi/DUC
 a2QL0QxDLcAGnhDTmRg+7YAgz1K6n2oyynzVR2nxcJ9lanjoB2yvJ2RvZpsEDSpQZvmfe6M7XAx
 Wpi6tFSAo5rKipbuA3bDiz2GEaSEF30Cp/9gG92mh3gz/uwFDwhOJjQiSbZwEtxTXvY8NM0d3qd
 1zgmbQE9rxLPYrNIiSutbydK39zKuwsUxlooLKf3dP+DI6guEcu9dADq9M5ptB8AwoUBQ4ZUQyw
 GgChUIHxbndGJjIEZq4W1Qvag==
X-Received: by 2002:a05:690e:205e:b0:64e:d610:71cf with SMTP id
 956f58d0204a3-65eae48a32emr2078881d50.58.1779373376711; 
 Thu, 21 May 2026 07:22:56 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:6b36:97e1:3f54:e933])
 by smtp.gmail.com with ESMTPSA id
 956f58d0204a3-65ec2009b8dsm222944d50.14.2026.05.21.07.22.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 May 2026 07:22:56 -0700 (PDT)
Date: Thu, 21 May 2026 09:22:51 -0500
From: Corey Minyard <corey@minyard.net>
To: Matt Fleming <matt@readmodwrite.com>
Message-ID: <ag8VOyAuhf6M_0NW@mail.minyard.net>
References: <20260521130628.3641050-1-matt@readmodwrite.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260521130628.3641050-1-matt@readmodwrite.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, May 21, 2026 at 02:06:27PM +0100, Matt Fleming wrote:
 > From: Matt Fleming <mfleming@cloudflare.com> > > ipmi_alloc_recv_msg(user)
 takes the temporary user reference owned by the > receive mes [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.45 listed in wl.mailspike.net]
X-Headers-End: 1wQ5J6-0003XQ-8y
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Fix user refcount underflow
 in event delivery
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
Cc: Matt Fleming <mfleming@cloudflare.com>, kernel-team@cloudflare.com,
 Gilles BULOZ <gilles.buloz@kontron.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, openipmi-developer@lists.sourceforge.net
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
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:matt@readmodwrite.com,m:mfleming@cloudflare.com,m:kernel-team@cloudflare.com,m:gilles.buloz@kontron.com,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,m:openipmi-developer@lists.sourceforge.net,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[corey@minyard.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.minyard.net:mid,cloudflare.com:email,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,lists.sourceforge.net:helo,minyard.net:replyto]
X-Rspamd-Queue-Id: 91E4C5A852B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, May 21, 2026 at 02:06:27PM +0100, Matt Fleming wrote:
> From: Matt Fleming <mfleming@cloudflare.com>
> 
> ipmi_alloc_recv_msg(user) takes the temporary user reference owned by the
> receive message, and ipmi_free_recv_msg() drops it again. If event delivery
> fails after allocating receive messages for earlier users,
> handle_read_event_rsp() rolls those messages back with
> ipmi_free_recv_msg().
> 
> That rollback path still drops user->refcount explicitly after freeing each
> message. The extra put can free a user that remains linked on intf->users,
> so later event delivery may dereference a freed user or trip refcount_t's
> addition-on-zero warning when ipmi_alloc_recv_msg() tries to acquire
> another reference.
> 
> Remove the stale explicit put and the now-dead user assignment. Keep the
> list_del() and ipmi_free_recv_msg() calls; they are the required rollback
> operations.

Yes, this is correct.  Queued in the ipmi next tree for next release.

Thanks,

-corey

> 
> Fixes: b52da4054ee0 ("ipmi: Rework user message limit handling")
> Cc: stable@vger.kernel.org
> Signed-off-by: Matt Fleming <mfleming@cloudflare.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 869ac87a4b6a..52561a880e54 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -4477,10 +4477,8 @@ static int handle_read_event_rsp(struct ipmi_smi *intf,
>  			mutex_unlock(&intf->users_mutex);
>  			list_for_each_entry_safe(recv_msg, recv_msg2, &msgs,
>  						 link) {
> -				user = recv_msg->user;
>  				list_del(&recv_msg->link);
>  				ipmi_free_recv_msg(recv_msg);
> -				kref_put(&user->refcount, free_ipmi_user);
>  			}
>  			/*
>  			 * We couldn't allocate memory for the
> -- 
> 2.43.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
