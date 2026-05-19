Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YAtKJydeDGq5gQUAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 19 May 2026 14:57:11 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DC22057F243
	for <lists+openipmi-developer@lfdr.de>; Tue, 19 May 2026 14:57:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TuT9c2o08ZccdjjNLzf1ZLbyEGwNjtHD77lJKMYXglA=; b=HogspZmx0znBNlhFdnby0DS/BP
	lR/5gIN8iM249u0/Fp9axJrjYW3gQtJ41EG1W80izHn7MtbSLP2mUO+WnycZyBdvVOKZDSWBGtzbl
	rFNN9d7hMpimF/AxH623WXC1Ih3S0ns/LMiS63Dkp6+N1hpmyQ2X9RKi+gW4s+M5a/6Y=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wPK0M-0004HW-0a;
	Tue, 19 May 2026 12:57:02 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wPK04-0004H1-8b
 for openipmi-developer@lists.sourceforge.net;
 Tue, 19 May 2026 12:56:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1HZEuM54gZNdUOGSCQijDhK0qQq1J/Ul9HT/qSyapsQ=; b=E3Lv4yCjMsGZtAeGcT5eOXy5rV
 zf0t5CXimlbU8rlog1vJM3YcfDPX75u6Ly0UTo7GHhskn6Y5zWElZBfUAKeYL8ED9pxcF+kNSpNsm
 IQU+ZcQi3ogFToM4JCH3dJ3gb/rrb03rrD6Ve3lImm2XDlap5etgSqzQX5u2yzv3dr44=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1HZEuM54gZNdUOGSCQijDhK0qQq1J/Ul9HT/qSyapsQ=; b=SrDSIm1GUizkGCzafSsFBlmnTm
 ll9XjQrPLVMXdLoIOjJF3zPNqZhU8DS3p6A3U2BZl33WxQVQt+7NTeW8zpMUD4jrR5b8ICTwYLf5L
 gk9KO8i4B47FL87Fzd/y9zWaFsvYl9MSH6V2C2+S4sxO2+5kdvh0rz35I+heZrUEvV3A=;
Received: from mail-dy1-f173.google.com ([74.125.82.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wPK03-0003nL-89 for openipmi-developer@lists.sourceforge.net;
 Tue, 19 May 2026 12:56:44 +0000
Received: by mail-dy1-f173.google.com with SMTP id
 5a478bee46e88-2f33ae12f97so11974158eec.1
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 19 May 2026 05:56:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1779195393; x=1779800193; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=1HZEuM54gZNdUOGSCQijDhK0qQq1J/Ul9HT/qSyapsQ=;
 b=nrS+xKLJi9dXZAsMvd/Ws70MNBIJ4i7EamQTadQN1+/r86RVOy3ejQceX5fwvjLH19
 60rLcJV+1ehwDs/NeeATWjtgQiL9ZUime/N7LHbUu6tOhrX294RzCl/xugTq9e2T1oia
 gtkVEHAnLvelUKjDiL0kIl9hkh3a5IRPklltYQlWhEH7PskPqfEbirstU78rJn4JlbaF
 1Ir7KUge77IWSsKXo2RHoJDkgAtQSVOVZENSAow+3uhBx5pvwfpAGUnsmCsgNROdpfzJ
 /KgC95x8AkWf6yg0HMNiRijlwz0WZPTQHPw5TMxzyPFKBAJEtePs6CCd/OwbzhrXhRhw
 Ilfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1779195393; x=1779800193;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=1HZEuM54gZNdUOGSCQijDhK0qQq1J/Ul9HT/qSyapsQ=;
 b=RRXE/pKFpQ1W8ohKYb9eMMz4NL1O2q/SHia49aQnCjB5EDcsP8f1wM9RQ1Qg0kkYDe
 zNmJP3L8jeovXKmvDSxjOBO+T5Xuu6j3kLuDYLcQz0WpLfW2nGp6LfJGkU27PhHmYM/m
 XURBdGGHxviK5zx+VepgsYgvOg5uyjLOS1s63ptRL2pakOv+G4Uhw3HIkH005R+IPSG9
 TlVOQ9A+N05MdONyae3it70pWQ3tRnI8GeabuOYddO76EjuzXR0OxU8UVmae9evhtNhS
 abXKb87gTHT0jXwu9kCX+CmS0wYpJdj6876jrNZV1EyXhSskRp0HWkpDX0Zu9Wc0XfuN
 puyg==
X-Gm-Message-State: AOJu0YwBw3A6FOxM5Ty2FUl6ssc0UWjOvRdUiELrIlmbZO4LAeEQRSM4
 91cVO2QFHCtgZ4xzsxw4cingmUpxxTMZENSbX31t4XsA2EzzggMjOoX0i3WNnOTNPRqr+RZWEpd
 MYhIl
X-Gm-Gg: Acq92OGKHuZruUytp//2M3iIH8cFrAY7+yYagacQq/LQOgQku90daIxGpVBe+lEaXZJ
 1goPaOQTEm4LHvwodaF61sQPXaJkLfiTC0tmiXUsIa6MGuTEN6CMGT+EurIYIiQkGKBbgl/rprk
 s7rOIPc9H1zAvEQuDZ1HnCw1FgLyoWurvTyUU41TRtmvDlUbsM6IRXMsEsBpzQ4VbJMc17zN/nL
 HfJBACsI3F5g38HlG9bgPzCvBFhdcOmB9hAQCHIL+D9yuCW2ioWCRbwIzVvjcKipKBGmMl2Av5M
 2Gmvx3vkpM9p/fHGOx+8m6HNxghes/XmrUgIQuQ9WM9EerBlpgtch5Jo0nKtFYAq9V68isVkqqj
 UuD99IDNdrvAcJLkaaKOFdoO8wy5ROFwwHQNftS3uGn6DkMTrSHD+4Fy2dP+kwpkoRpiJijreQR
 67TOOpvCyv5+WTT6rfz+CTOicx6+1993XNiRZ4ZcicACfSjTKuwxRctndKwwRWgYhT3q5qqVOb5
 +WHxEcF4/Biod2onYFRxgOL
X-Received: by 2002:a05:6808:e407:b0:479:eb19:6e6b with SMTP id
 5614622812f47-482e5609a80mr9111194b6e.15.1779195028228; 
 Tue, 19 May 2026 05:50:28 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:aa2:381f:151a:2c86])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-482ee389209sm6663719b6e.5.2026.05.19.05.50.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2026 05:50:26 -0700 (PDT)
Date: Tue, 19 May 2026 07:50:21 -0500
From: Corey Minyard <corey@minyard.net>
To: Jisheng Zhang <jszhang@kernel.org>
Message-ID: <agxcjavdswsyoK5Y@mail.minyard.net>
References: <20260519055722.13161-1-jszhang@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260519055722.13161-1-jszhang@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, May 19, 2026 at 01:57:22PM +0800,
 Jisheng Zhang wrote:
 > Use LIST_HEAD to initialize on stack list head. No intentional > functional
 impact. Thanks, this is in my next tree. -corey 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [74.125.82.173 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1wPK03-0003nL-89
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Use LIST_HEAD() to
 initialize on stack list head
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
X-Spamd-Result: default: False [-1.01 / 15.00];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jszhang@kernel.org,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_REPLYTO(0.00)[corey@minyard.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.minyard.net:mid,minyard.net:replyto]
X-Rspamd-Queue-Id: DC22057F243
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 19, 2026 at 01:57:22PM +0800, Jisheng Zhang wrote:
> Use LIST_HEAD to initialize on stack list head. No intentional
> functional impact.

Thanks, this is in my next tree.

-corey

> 
> Change generated with below coccinelle script:
> 
> @@
> identifier name;
> @@
> - struct list_head name;
> + LIST_HEAD(name);
> ... when != name
> - INIT_LIST_HEAD(&name);
> 
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 14 ++++----------
>  1 file changed, 4 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 869ac87a4b6a..7a4566046b68 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -1610,14 +1610,12 @@ int ipmi_set_gets_events(struct ipmi_user *user, bool val)
>  {
>  	struct ipmi_smi      *intf = user->intf;
>  	struct ipmi_recv_msg *msg, *msg2;
> -	struct list_head     msgs;
> +	LIST_HEAD(msgs);
>  
>  	user = acquire_ipmi_user(user);
>  	if (!user)
>  		return -ENODEV;
>  
> -	INIT_LIST_HEAD(&msgs);
> -
>  	mutex_lock(&intf->events_mutex);
>  	if (user->gets_events == val)
>  		goto out;
> @@ -3785,10 +3783,9 @@ static void cleanup_smi_msgs(struct ipmi_smi *intf)
>  	struct seq_table *ent;
>  	struct ipmi_smi_msg *msg;
>  	struct list_head *entry;
> -	struct list_head tmplist;
> +	LIST_HEAD(tmplist);
>  
>  	/* Clear out our transmit queues and hold the messages. */
> -	INIT_LIST_HEAD(&tmplist);
>  	list_splice_tail(&intf->hp_xmit_msgs, &tmplist);
>  	list_splice_tail(&intf->xmit_msgs, &tmplist);
>  
> @@ -4442,7 +4439,7 @@ static int handle_read_event_rsp(struct ipmi_smi *intf,
>  				 struct ipmi_smi_msg *msg)
>  {
>  	struct ipmi_recv_msg *recv_msg, *recv_msg2;
> -	struct list_head     msgs;
> +	LIST_HEAD(msgs);
>  	struct ipmi_user     *user;
>  	int rv = 0, deliver_count = 0;
>  
> @@ -4457,8 +4454,6 @@ static int handle_read_event_rsp(struct ipmi_smi *intf,
>  		return 0;
>  	}
>  
> -	INIT_LIST_HEAD(&msgs);
> -
>  	mutex_lock(&intf->events_mutex);
>  
>  	ipmi_inc_stat(intf, events);
> @@ -5101,7 +5096,7 @@ static void check_msg_timeout(struct ipmi_smi *intf, struct seq_table *ent,
>  static bool ipmi_timeout_handler(struct ipmi_smi *intf,
>  				 unsigned long timeout_period)
>  {
> -	struct list_head     timeouts;
> +	LIST_HEAD(timeouts);
>  	struct ipmi_recv_msg *msg, *msg2;
>  	unsigned long        flags;
>  	int                  i;
> @@ -5120,7 +5115,6 @@ static bool ipmi_timeout_handler(struct ipmi_smi *intf,
>  	 * have timed out, putting them in the timeouts
>  	 * list.
>  	 */
> -	INIT_LIST_HEAD(&timeouts);
>  	mutex_lock(&intf->seq_lock);
>  	if (intf->ipmb_maintenance_mode_timeout) {
>  		if (intf->ipmb_maintenance_mode_timeout <= timeout_period)
> -- 
> 2.53.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
