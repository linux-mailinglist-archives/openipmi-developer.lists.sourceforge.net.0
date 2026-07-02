Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ij+5Ne1NRmq+PwsAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Thu, 02 Jul 2026 13:39:25 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C2A6F6D70
	for <lists+openipmi-developer@lfdr.de>; Thu, 02 Jul 2026 13:39:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lists.sourceforge.net header.s=beta header.b=lD+v6Ib3;
	dkim=fail ("body hash did not verify") header.d=sourceforge.net header.s=x header.b=lpCXxfJu;
	dkim=fail ("body hash did not verify") header.d=sf.net header.s=x header.b=FaLiwZ0+;
	dkim=fail ("body hash did not verify") header.d=minyard.net header.s=google header.b=dzC8Id7D;
	spf=pass (mail.lfdr.de: domain of openipmi-developer-bounces@lists.sourceforge.net designates 216.105.38.7 as permitted sender) smtp.mailfrom=openipmi-developer-bounces@lists.sourceforge.net;
	dmarc=fail reason="SPF not aligned (strict), DKIM not aligned (strict)" header.from=minyard.net (policy=none)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ox7mzDHzO24MAP6v1A3+kiPriIiVVqRMbAFKfexJgQ0=; b=lD+v6Ib3ngaw57Gk2LpDZdmgID
	Qlg9woLG2Wz9F/7Q5WPSeNiuiw0c4mdVAHGiVtz6AU8vuLxJWspAwtHpXdRyvZltuqjrFkDIS+mzq
	WPHkjJD6nrZGwjtrirDNH5rAq2Ik6qWnMaHOWhYBjtWS0LftIMMEe2Uuh34FB2m9BrhQ=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1wfFlB-0005LU-B4;
	Thu, 02 Jul 2026 11:39:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1wfFl9-0005LO-Qw
 for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Jul 2026 11:39:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Lyt4xoV2v8jyxl4ZpFcYw7RBDGThjZWpi44qBzlWcC8=; b=lpCXxfJuXDLTTRvU6oQ6oBL6N1
 Vs1F8TqxsY8hnBaamVRYnGvS9N0uD871MaDJ0tdlnOKJ5OOpq+/TFFVDBVBy8rOa3PRriZdEb1rZk
 zMfGGLzVxT0GxVCtzaaY4orUl/6L+bT3rSOO8AT80PXydX6OdQppmvn+80NuLvpDm5z4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Lyt4xoV2v8jyxl4ZpFcYw7RBDGThjZWpi44qBzlWcC8=; b=FaLiwZ0+vl9reCSTMlO5TntC1h
 6lbngFI6+E0+WblNACgkYWCb/I1dknYKVxR28xBhqMEkUv4mYi315iZUuGOyCRZkO12tRKBsrIH/a
 IFEzXmkgndNCiY2AKtL9PHdzKxxU7QOq/Lf6yFteGmxZSgOKudVKnKCCWRMmRG2szhm8=;
Received: from mail-oi1-f171.google.com ([209.85.167.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1wfFl7-0003Tj-Mn for openipmi-developer@lists.sourceforge.net;
 Thu, 02 Jul 2026 11:39:11 +0000
Received: by mail-oi1-f171.google.com with SMTP id
 5614622812f47-49600eee5d7so732026b6e.3
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 02 Jul 2026 04:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1782992339; x=1783597139; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Lyt4xoV2v8jyxl4ZpFcYw7RBDGThjZWpi44qBzlWcC8=;
 b=dzC8Id7D/5xkuKwQU3jqn7FisXKI+G0zm5Q/n40jsco/6eLUHT9eBxSLLkygA0B6YX
 EBS5TNkcXXIHrQMPBBvkzcp2Qig/YqF691bhd5wOIMnTUMSR3ng8vQ0hVyFcdBES3Y9P
 4YYm7pahA4XV+N/mSedZ2Ueb0pWZIFiKUUReG/BSbWcxLWKyEgO2L34CHnbg0hcEKnoZ
 vGb5FN+a3ZYreTxymW/W7GdbWH1Xi938dpjhyaBETnP5Az7TCzT+/G/RLCcX+kin7Fd7
 +b/JPyDXV/ArBd95+ub4jPbgcgbdBC20tbct8W1brFMdxdqznxq/RHOoqXrya3Qba8sT
 CZXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782992339; x=1783597139;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=Lyt4xoV2v8jyxl4ZpFcYw7RBDGThjZWpi44qBzlWcC8=;
 b=q8TDN8xp7N/8Upd8+iuz5UHuAgRcZXzoc6R/4Kjh9bryO+h1ryrlLes9lCf6N7aRj0
 Rf61VQTOABZno/G4YJADn05Y45EKD544eNTF68E9R4+Dzc/TQ4UYb7U2qjcDnJd9D/mf
 YFCQLPyc2pns5fMKs1ZeepMiNt6IFdMefQVFPpUnFLHtZY9qHwBkX+wrwI4xvQo253NM
 ODIuPe72OFJ0Qr0Xv2A5+jgJITffJx0C+3m2lf4cfFpbTNsoQixqjZE2MDB/nu2HjYTO
 WB7lsmIRGrGOOlscB7zRFVqwXNuY1A4LjtfjAa3kS+4dVoDK08nxTWYEDbZjH74i9JAA
 22CQ==
X-Gm-Message-State: AOJu0Yw/BaTC+1gs125/DXsTD4/QQftwHG05qA+m/lAo+0XwNyVrPCPJ
 ffN+B/TJEeshKvSFin1qOIte3QeYYr1ObLS+1HiT+/5rsNq1VOb0sOq64lSPk310/hXpbIRUh8e
 xkLJE
X-Gm-Gg: AfdE7cmIfbuLVKmAuIC94LoWVmjXIsQ86bmcaZ/P2kpZ0CyD8vJWUii5oQ+QoomWZUX
 5mJoT3+duVCfC8qvebvofYwZRqIKdgM8gzvmJ77k4dc2Bw/NQGAQobNC2aTCEpFTMFUqbYnNcMg
 TqFcYOdc3QpyTy6XCL/4HIluUWhW743NNxKPnzEdUbIXYyNzy10vUM20915ruRdthyH2VYxr/XA
 7WsNzvHBY86VIliy3zfsriDNKF8FBFbseO1Yl+UAYtltIqtR0t/+48fYzaoqTUoDw42J+6yNQwi
 V3IBBPFIhgnsyQZUuZ+tPK7o65ZoRV+8e3GLX9AY1o373VTeeeqUZcUbWTBS+N48CizXdc9BU9U
 PyiMeaVjuADNT6xr2oSKtUFv3ANC5eXOOkFVdgpVt5AzmhaIHaT656J16Toqew+1xS55bWXvjL+
 umsXMqy1L99S5SBAJ3HArdLGD3s8lbMHVCrvkP+lKeGJ7BhhJlPylav3rEsKCXJBOdqdkNlsj7Y
 9FuKv0AHe8Yx/yhgtJ/g6Bw3FmbeVj9DYHIHw==
X-Received: by 2002:a05:6808:1305:b0:495:dea9:3b6 with SMTP id
 5614622812f47-4960ef48c80mr4664523b6e.26.1782992339428; 
 Thu, 02 Jul 2026 04:38:59 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:cbfe:43f3:70c2:f4b2])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-497d1b43cfcsm1414670b6e.14.2026.07.02.04.38.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jul 2026 04:38:57 -0700 (PDT)
Date: Thu, 2 Jul 2026 06:38:54 -0500
From: Corey Minyard <corey@minyard.net>
To: Seiji Nishikawa <snishika@redhat.com>
Message-ID: <akZNzv-hg2EpqbZ0@mail.minyard.net>
References: <akPkL1b8xuexlYqi@mail.minyard.net>
 <20260630174348.1483814-1-snishika@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260630174348.1483814-1-snishika@redhat.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jul 01, 2026 at 02:43:48AM +0900, Seiji Nishikawa
 wrote: > try_smi_init() allocates new_smi->si_sm and later calls >
 ipmi_register_smi_mod(), 
 which maps to ipmi_add_smi(). > > During ipmi_add_ [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.171 listed in wl.mailspike.net]
X-Headers-End: 1wfFl7-0003Tj-Mn
Subject: Re: [Openipmi-developer] [PATCH v2] ipmi: si: Fix NULL pointer
 dereference after failed registration
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
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[minyard.net : SPF not aligned (strict), DKIM not aligned (strict),none];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:snishika@redhat.com,m:openipmi-developer@lists.sourceforge.net,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,minyard.net:-];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
	RCPT_COUNT_THREE(0.00)[3];
	PREVIOUSLY_DELIVERED(0.00)[openipmi-developer@lists.sourceforge.net];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[corey@minyard.net]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F1C2A6F6D70

On Wed, Jul 01, 2026 at 02:43:48AM +0900, Seiji Nishikawa wrote:
> try_smi_init() allocates new_smi->si_sm and later calls
> ipmi_register_smi_mod(), which maps to ipmi_add_smi().
> 
> During ipmi_add_smi(), the upper IPMI message handler obtains the
> initial BMC device information through __bmc_get_device_id(). This can
> fail if the BMC does not return a successful response to the Get Device
> ID command.
> 
> When the BMC returns a nonzero completion code, the device-id helper
> retries the command and eventually returns -EIO if the device ID still
> cannot be fetched.
> 
> On this failure path, ipmi_add_smi() logs "Unable to get the device id"
> and goes to out_err_started, where it invokes the lower driver's
> shutdown callback. try_smi_init() then logs the returned registration
> failure:
> 
>  ipmi_si IPI0001:00: IPMI message handler: Unable to get the device id: -5
>  ipmi_si IPI0001:00: Unable to register device: error -5
> 
> For ipmi_si, the shutdown callback is shutdown_smi(), which cleans up
> the SI state machine data, frees smi_info->si_sm, and sets
> smi_info->si_sm and smi_info->intf to NULL.
> 
> However, intf->in_shutdown is not set on this failed-registration
> rollback path. Therefore, the asynchronous redo_bmc_reg work item can
> still retry BMC device-id probing after the lower driver has already
> cleared its SI state machine data. In the observed case, that retry path
> reached start_next_msg(), which passed the NULL smi_info->si_sm pointer
> to the selected KCS state machine handler:
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
> Set intf->in_shutdown on the out_err_started path before invoking the
> lower driver's shutdown callback. This prevents later redo_bmc_reg
> retries from using an interface whose lower driver state has been
> cleaned up, and applies the same shutdown state to other IPMI interfaces
> as well.
> 
> Signed-off-by: Seiji Nishikawa <snishika@redhat.com>
> ---
> Thanks, I agree. I moved the fix to the ipmi_add_smi() rollback path in v2
> and dropped the SI-side NULL checks.

Thanks, this is in my for-next tree.

-corey

> 
> Changes in v2:
> - Move the fix to ipmi_add_smi() by setting intf->in_shutdown on the
>   out_err_started path, as suggested by Corey.
> - Drop the NULL checks in ipmi_si_intf.c.
> 
>  drivers/char/ipmi/ipmi_msghandler.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index ab4c85f3d6fe..8d9f2e647d9b 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -3757,6 +3757,7 @@ int ipmi_add_smi(struct module         *owner,
>   out_err_bmc_reg:
>  	ipmi_bmc_unregister(intf);
>   out_err_started:
> +	intf->in_shutdown = true;
>  	if (intf->handlers->shutdown)
>  		intf->handlers->shutdown(intf->send_info);
>   out_err:
> -- 
> 2.54.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
