Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eMU7EkbkQ2qClAoAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Tue, 30 Jun 2026 17:44:06 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DD76E6100
	for <lists+openipmi-developer@lfdr.de>; Tue, 30 Jun 2026 17:44:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=kufYYwun;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=Cemmlxu6;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=BY0vwcUy;
	dkim=fail ("body hash did not verify") header.d=minyard.net header.s=google header.b="SWpVDMc/";
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=fail reason="SPF not aligned (strict), DKIM not aligned (strict)" header.from=minyard.net (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ch1AsBJtiaFqJI+5yq02XxQZoxXdLtuBwQjSkODlIF4=; b=kufYYwunts/kHxYBf5iGurGxOp
	TaEbR5+1ERtQ2X10CkUrAt8na+BbqLmNp8iNI2RenIVcgVEryn+iyPjQJt8o1v4vXNJmzVe0kfA5H
	LY/+7n914x3DvYBbTLAvfPaN2va7cxruxe86WXIcpw3GAV2dRYTtj0FfkNS3E/h5bahM=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1weact-0005aD-Or;
	Tue, 30 Jun 2026 15:43:55 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1weacs-0005a7-98
 for openipmi-developer@lists.sourceforge.net;
 Tue, 30 Jun 2026 15:43:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TAfkRgXWz9THLu90aX4PXdlkyOPjYY1bhpxPkmPz80o=; b=Cemmlxu6BRHDeDAj1FITSvQLN7
 axGNX+gUbmhtdTHNRDRw/jTflqA5rtfKXA0yXg/PJARfLAce6QsgZRav4YKxbAyc/+vwzn+x9LmP8
 ipZx9/dH76p3XG2oeM/Hpz/NwUoKkxG0PbI3LKE2tr9ms8UpfZLKwDL1liQV//lcBstY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TAfkRgXWz9THLu90aX4PXdlkyOPjYY1bhpxPkmPz80o=; b=BY0vwcUy2P6olzvXcCBpNFQaTg
 Ir+/lMKo/dPkRjaqnOaUltTJctJnxRk9VHVGBrRmKRmwbCiWJ5vGJi2CteVMElPNYQof/3UvDXJly
 rxiupcWVA56uY9BFcrFFGlTdF2Ei2OPrvDDf0oXBov8mZ+crkyMbUIXNF23QvBCk4j1U=;
Received: from mail-ot1-f47.google.com ([209.85.210.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1weacr-00013L-8p for openipmi-developer@lists.sourceforge.net;
 Tue, 30 Jun 2026 15:43:54 +0000
Received: by mail-ot1-f47.google.com with SMTP id
 46e09a7af769-7e9f6b94a49so369064a34.3
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 30 Jun 2026 08:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1782834228; x=1783439028; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=TAfkRgXWz9THLu90aX4PXdlkyOPjYY1bhpxPkmPz80o=;
 b=SWpVDMc/pF+V0NI4HmXAl6EVeB5YpmedVNkpqVtOYyp3sdSkeZM3FQDuzqS5P/9Tbg
 OmCWc4McNPYcrnHJn+TZD63CeLY+FNM+eRsxGOzuvr6OQxbJAwLjRUU013iJq3JvmL0p
 evWAPOoEG/q9bRJRmfnSErGfnAJxCxSfm+GqeV3VqEqqQhDfSbw/828tysgF8kgKM4DF
 WP5mB/PAfbjdazW9CZd5r9gf4mRuBbHWJuUfk+SiJnzDOmGfV1FfptJ52aH8wG1aKE4c
 3H9ZUjepGfdI3VGAQIEpyBuayj1bmA9h2hIXf4BvVyq6/3VGANcpC4H90YwO88S9b/to
 TvzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782834228; x=1783439028;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=TAfkRgXWz9THLu90aX4PXdlkyOPjYY1bhpxPkmPz80o=;
 b=rd9/eWlDvr3Hhez369a6gRPgiRLn1/OX3aT9TvvWxBRNagAr79PCKUIOAwQ4e5bdEB
 jPTmhbodsN+ZnGxP4XNnZWjJ4SQ8hNiuhV6JzgPh90V53mi62KeREqP74LuEHRMTfbr/
 tYPhNU65LYvDSo8qgYWdZOL/lTIczMbKJ/PEyviad7AdlcN/XrVYxZfmDbPQvG9ZA9tq
 iYjvfS8egpC63wgdPOSlqosz2jAoYPY6ifYVCs+0xAyaVoQsEWYDFf3N+2biZJJps9Nk
 zRBnB1HngOz62yYUo4T9wQZy6hpKddEbhAD50pLie/K+6q7eqAB+fQxV3b8dFvbgT5vX
 B2yQ==
X-Gm-Message-State: AOJu0YwMigmHWboAffpJ9onLm2JK+r+bM/WO0RjBCXUmYa89607InihA
 rnp+dbZCBIc9GFNf526nVIiFTG/2vXyAU58eu31R0JsPl48lmQuvcV/JaNMBENSIra0=
X-Gm-Gg: AfdE7ckPciBGVAKVh1tnZVWRmLJe5cUVvFthn8yInaf327/kylNc8oratp8bz4IHRhS
 a1NhG80TIoRHla91LETRzRs1LB54PlP+UJL63ukA9C+fvfl+YgSPzBOFgE+VeBdWdKzhiU3B2aw
 dRpaQa8S5ZXtUDrbAGOy8BqrKM0kBccHJybrhenyMo6YbSZoRCPPNv+PbT3PxYVscuH5OlNmqfl
 ZVkO3wlTXKmnED9AsAEocHeJ2PPyN3eTLCzaIpueQPFmlLtjtXDwJdursefLr+IA8VbP+gI3cFd
 +LRy4omuIoGGOMWmZHJH6iyswQ6VHANlSyP2NGFzV8q6GiN9TrocsCty4wudHQm0c86YWXYyvjR
 vfszLAJKsiHUk5UWef+Ylo1GvrGMqpcfJSdsfc4JPk4IcREjkSlIZYV6zNmzSxe0TivPquqMT3p
 Mz20Lf64mI07bf4zo+8lJRgvz50bqu2wTeaSnsChYvL6M0ksh5rf8woljKUHfTD6A9cA96NnBVw
 rgwQhgVle6acvKCUcCrCrHiP2dEiWPwXxNf
X-Received: by 2002:a05:6808:150e:b0:489:6f90:2f45 with SMTP id
 5614622812f47-495eadb3750mr3017719b6e.1.1782834227928; 
 Tue, 30 Jun 2026 08:43:47 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:b3ac:de10:3c66:13b])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-49354e517dfsm8890265b6e.11.2026.06.30.08.43.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Jun 2026 08:43:47 -0700 (PDT)
Date: Tue, 30 Jun 2026 10:43:43 -0500
From: Corey Minyard <corey@minyard.net>
To: Seiji Nishikawa <snishika@redhat.com>
Message-ID: <akPkL1b8xuexlYqi@mail.minyard.net>
References: <20260630140633.1410091-1-snishika@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260630140633.1410091-1-snishika@redhat.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jun 30, 2026 at 11:06:33PM +0900, Seiji Nishikawa
 wrote: > try_smi_init() allocates new_smi->si_sm and later calls >
 ipmi_register_smi(), 
 which maps to ipmi_add_smi(). Thank you, the analysis is correct and very
 good. Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.47 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1weacr-00013L-8p
Subject: Re: [Openipmi-developer] [PATCH] ipmi: si: Fix NULL pointer
 dereference in start_kcs_transaction()
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	DKIM_MIXED(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:snishika@redhat.com,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_REPLYTO(0.00)[corey@minyard.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[openipmi-developer];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[minyard.net:replyto,minyard.net:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 66DD76E6100

On Tue, Jun 30, 2026 at 11:06:33PM +0900, Seiji Nishikawa wrote:
> try_smi_init() allocates new_smi->si_sm and later calls
> ipmi_register_smi(), which maps to ipmi_add_smi().

Thank you, the analysis is correct and very good.

I don't think the fix is right, though.  I believe the right way to
handle this is to set intf->in_shutdown right after out_err_started:
in ipmi_add_smi().  That was the intent, this case was missed.

And that way it's fixed for the other IPMI interfaces.

Do you agree?

-corey

> 
> During ipmi_add_smi(), the upper IPMI message handler obtains the initial
> BMC device information through __bmc_get_device_id(). This can fail if the
> BMC does not return a successful response to the Get Device ID command.
> 
> When the BMC returns a nonzero completion code, the device-id helper
> retries the command and eventually returns -EIO if the device ID still
> cannot be fetched.
> 
> On this failure path, ipmi_add_smi() logs "Unable to get the device id" and
> goes to out_err_started, where it invokes the lower driver's shutdown
> callback. try_smi_init() then logs the returned registration failure:
> 
>  ipmi_si IPI0001:00: IPMI message handler: Unable to get the device id: -5
>  ipmi_si IPI0001:00: Unable to register device: error -5
> 
> For ipmi_si, the shutdown callback is shutdown_smi(), which cleans up the
> SI state machine data, frees smi_info->si_sm, and sets smi_info->si_sm and
> smi_info->intf to NULL.
> 
>         kfree(smi_info->si_sm);
>         smi_info->si_sm = NULL;
> 
>         smi_info->intf = NULL;
> 
> However, the smi_info can still be reached later. In the observed case, the
> redo_bmc_reg work item retried BMC device-id probing after shutdown_smi()
> had already cleared smi_info->si_sm. The retry path reached
> start_next_msg(), which passed the NULL smi_info->si_sm pointer to the
> selected KCS state machine handler:
> 
> BUG: unable to handle kernel NULL pointer dereference at 0000000000000000
> Workqueue: events redo_bmc_reg [ipmi_msghandler]
> RIP: start_kcs_transaction+0x2c/0x190 [ipmi_si]
> Call Trace:
>  start_next_msg+0x50/0x80 [ipmi_si]
>  check_start_timer_thread.part.9+0x3b/0x50 [ipmi_si]
>  sender+0x69/0x80 [ipmi_si]
>  i_ipmi_request+0x2ac/0x9d0 [ipmi_msghandler]
>  __get_device_id.isra.29+0xaa/0x180 [ipmi_msghandler]
>  __bmc_get_device_id+0xef/0x950 [ipmi_msghandler]
>  redo_bmc_reg+0x52/0x60 [ipmi_msghandler]
>  process_one_work+0x1a7/0x360
> 
> start_next_msg() and smi_event_handler() both invoke the selected SI state
> machine handlers with smi_info->si_sm without checking whether the state
> machine data has already been freed and cleared.
> 
> Add NULL checks before calling into the selected SI state machine handlers.
> If the state machine data has already been removed, treat the interface as
> idle and avoid dereferencing the cleared state.
> 
> Signed-off-by: Seiji Nishikawa <snishika@redhat.com>
> ---
>  drivers/char/ipmi/ipmi_si_intf.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
> index 9a9d12be9bf7..d13d5024352a 100644
> --- a/drivers/char/ipmi/ipmi_si_intf.c
> +++ b/drivers/char/ipmi/ipmi_si_intf.c
> @@ -320,6 +320,9 @@ static enum si_sm_result start_next_msg(struct smi_info *smi_info)
>  {
>  	int rv;
>  
> +	if (unlikely(!smi_info->si_sm))
> +		return SI_SM_IDLE;
> +
>  	if (!smi_info->waiting_msg) {
>  		smi_info->curr_msg = NULL;
>  		rv = SI_SM_IDLE;
> @@ -800,6 +803,9 @@ static enum si_sm_result smi_event_handler(struct smi_info *smi_info,
>  {
>  	enum si_sm_result si_sm_result;
>  
> +	if (unlikely(!smi_info->si_sm))
> +		return SI_SM_IDLE;
> +
>  restart:
>  	if (smi_info->si_state == SI_HOSED)
>  		/* Just in case, hosed state is only left from the timeout. */
> -- 
> 2.54.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
