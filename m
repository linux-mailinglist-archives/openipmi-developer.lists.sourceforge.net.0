Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4BTwMxr8xWmOEwUAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 27 Mar 2026 04:40:10 +0100
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C01D33EDB9
	for <lists+openipmi-developer@lfdr.de>; Fri, 27 Mar 2026 04:40:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Date:References:Message-Id:To:In-Reply-To:
	Mime-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n8VdEuQHK1kcbGpNLVZZPNeIw7QpzuLmgNgBG9FlHPM=; b=HEsJ8duyB09GWaOXWBbwcn2L//
	W8zQfOHsVIVsAICQjfkdXLxUBDIJQnj/30oxYJwDRbyqc9btZojKJOt3vfHNsc4P97MdDIg3ovhup
	pFQB105x+vLRLPJ2aVmYThSo5nUldqII55ebLOnCibcoUJKAZrVFjR5yzmIMbSJkKLRU=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1w5y3C-0007fy-SQ;
	Fri, 27 Mar 2026 03:39:58 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <qirui.001@bytedance.com>) id 1w5y3B-0007fs-OZ
 for openipmi-developer@lists.sourceforge.net;
 Fri, 27 Mar 2026 03:39:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:References:Content-Transfer-Encoding:
 Message-Id:To:Content-Type:Cc:From:In-Reply-To:Subject:Mime-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0ED32FdF0T/NCMsa7VWUG/TMWqAgSzH8xwcl1INvd08=; b=mWenKy5w+wBx9btpB10ghQrQPI
 UqX/jLqLOWDEYdLjtHA6wOMNwsbbqPsAWAmy0J0FGnrg9X+pbDUxS8vjTGRuAZ9aUN9sDtNmElciZ
 LKwr2ib0T+1aG/2WC3U7oHEgG6n6VzX4tXzV57d5cKFShglkVJAo5RPfLMLGGy9SwOLs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:References:Content-Transfer-Encoding:Message-Id:To:Content-Type:Cc:
 From:In-Reply-To:Subject:Mime-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0ED32FdF0T/NCMsa7VWUG/TMWqAgSzH8xwcl1INvd08=; b=Su4YifBAupd+/CVFN2ORriYOQ2
 upLS/12yUSWtqwhW73YhJAZwIaDvNDWrCraTd0lemUxjzlIubKHYrof3r+RaAcIHqCOGCcX1TAoQX
 rAj4KtoVWYpTZvPmSoshqs53Tv1da8cGqmElrGV1pMK9E0eI4mSSFWj0hmloW5zFpTAA=;
Received: from va-1-113.ptr.blmpb.com ([209.127.230.113])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1w5y3B-0000n1-2u for openipmi-developer@lists.sourceforge.net;
 Fri, 27 Mar 2026 03:39:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 s=2212171451; d=bytedance.com; t=1774582776; h=from:subject:
 mime-version:from:date:message-id:subject:to:cc:reply-to:content-type:
 mime-version:in-reply-to:message-id;
 bh=0ED32FdF0T/NCMsa7VWUG/TMWqAgSzH8xwcl1INvd08=;
 b=gWcrzCCvOG7521iLpfEn9Tm+0uqIP41FKDc3uMmy2t3KDFmzKJumGu4HHNSm3kkhd5GizI
 K61sZhFceKZEv5bDawikgSoYKfzn8fxkI4YvVXxSsXkQBCWp1qXrxNjKlhZxWUfwVotZdp
 DkqavTWNnL5Heuxtlm4g3VSzzRadYXXvzwHb/Ltu7jr7jXGOsJX2L5u2cVEhHqdcM5H2Cz
 j8D7InucpGVqEEO8ClG0D5vSZgp+LZnY/B4jAzk/8DTnwHkDQegedwgkaULwq5sQTSslMI
 Al93dubtY/EPGM0frNQeUPPY5ldfm0f0u8J3GJEycX4jjE2Yx0/4s0Pdj/rt6w==
Mime-Version: 1.0
X-Original-From: Rui Qi <qirui.001@bytedance.com>
X-Lms-Return-Path: <lba+269c5fbf6+6777d4+lists.sourceforge.net+qirui.001@bytedance.com>
In-Reply-To: <20260325121109.89705-1-qirui.001@bytedance.com>
To: <minyard@acm.org>, <corey@minyard.net>
Message-Id: <6304d593-23c5-4ea3-9ae8-b54911eedf96@bytedance.com>
User-Agent: Mozilla Thunderbird
References: <20260325121109.89705-1-qirui.001@bytedance.com>
Date: Fri, 27 Mar 2026 11:39:23 +0800
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/25/26 8:11 PM,
 Rui Qi wrote: > Fix a bug where rcu_read_unlock()
 was used instead of srcu_read_unlock() > in handle_read_event_rsp() when
 ipmi_alloc_recv_msg() fails. > > This mismatch can lead t [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [209.127.230.113 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
X-Headers-End: 1w5y3B-0000n1-2u
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Fix rcu_read_unlock to
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
From: Rui Qi via Openipmi-developer <openipmi-developer@lists.sourceforge.net>
Reply-To: Rui Qi <qirui.001@bytedance.com>
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net
X-Spamd-Result: default: False [-8.11 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	MV_CASE(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	FORGED_RECIPIENTS(0.00)[m:minyard@acm.org,m:corey@minyard.net,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,m:stable@vger.kernel.org,s:lists@lfdr.de];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,bytedance.com:s=2212171451];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TO_DN_NONE(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bytedance.com:email,bytedance.com:replyto,bytedance.com:mid,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:dkim];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[openipmi-developer@lists.sourceforge.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,bytedance.com:-];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[qirui.001@bytedance.com]
X-Rspamd-Queue-Id: 7C01D33EDB9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/25/26 8:11 PM, Rui Qi wrote:
> Fix a bug where rcu_read_unlock() was used instead of srcu_read_unlock()
> in handle_read_event_rsp() when ipmi_alloc_recv_msg() fails.
> 
> This mismatch can lead to SRCU read-side critical section imbalance.
> 
> Fixes: e86ee2d44b44 ("ipmi: Rework locking and shutdown for hot remove")
> Cc: stable@vger.kernel.org # 6.12
> 
> Signed-off-by: Rui Qi <qirui.001@bytedance.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 71c6ec8a87927..d2bbf8ffd9d76 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -4388,7 +4388,7 @@ static int handle_read_event_rsp(struct ipmi_smi *intf,
>  
>  		recv_msg = ipmi_alloc_recv_msg(user);
>  		if (IS_ERR(recv_msg)) {
> -			rcu_read_unlock();
> +			srcu_read_unlock(&intf->users_srcu, index);
>  			list_for_each_entry_safe(recv_msg, recv_msg2, &msgs,
>  						 link) {
>  				list_del(&recv_msg->link);

This patch applies to the LTS v6.12 branch, base commit
48591125594050ab91c9156bccb3ddd9a869d9f1


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
