Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OveGsy8z2nG0AYAu9opvQ
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	for <lists+openipmi-developer@lfdr.de>; Fri, 03 Apr 2026 15:12:44 +0200
X-Original-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EDB63945A1
	for <lists+openipmi-developer@lfdr.de>; Fri, 03 Apr 2026 15:12:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TPGOiuuVXuI1JU7CpWzH+GPjZ50+0JDWEtR0Jmyh92s=; b=gqGmemOaG5JISoGol2xdq877Id
	jhkkwtMO7D6U9yz3kZi/g/sGDsO3xaSZLQuepOTH+odqtVjb82xu41+rEQEABYcPNGuVp6zEZKdyw
	aV9L4J2J4Fc9noLO5IxdgmFIsVVXi2gZ4vV+a5Irvf748+wL1vXGIRO8KE4R0WqeJPQ4=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1w8eK6-0005kL-QU;
	Fri, 03 Apr 2026 13:12:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1w8eJu-0005k7-Or
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Apr 2026 13:12:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i4r1mYXYMFAjYkAi3r/abuqzd7ILh9e8TERfZN7EjXg=; b=LxKr2UOOmfjwzO2nY9ChxzQ864
 etAuLas+aanFvRdlS2WfHQ/TZVepg87ES7HdegDgJuMwU93elxmg9bE8KThFlU3WkkvSPFAwPJyfd
 Tq0tgXQNx072zsnq5LX2sSX4IExIU5yebF/5DxEXygCheYrNtfS3sJW+L1uEmoDP61qo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i4r1mYXYMFAjYkAi3r/abuqzd7ILh9e8TERfZN7EjXg=; b=IAN5563nEaPFpXq9APK6IiCPXJ
 VUqbFMS0UjXZ/HxdDsyTS9W010gfeYMMnTPNThV0+Ljw3YSRWptEJBqavw6hTJx1fNX+8vKi+KSUR
 +UGqvphp4d41GB1z4awvRumUZURgMhToZYG+0u60lpu2fN/qu7Hv5ODoQd6Iy18zjaOM=;
Received: from mail-ot1-f48.google.com ([209.85.210.48])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1w8eJu-0005zm-CK for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Apr 2026 13:12:18 +0000
Received: by mail-ot1-f48.google.com with SMTP id
 46e09a7af769-7d751ef36ccso1226537a34.0
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 03 Apr 2026 06:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard.net; s=google; t=1775221928; x=1775826728; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=i4r1mYXYMFAjYkAi3r/abuqzd7ILh9e8TERfZN7EjXg=;
 b=Q0aHUf866f0T+OCI/PcdNDI7RboJZRw2y6QCtYF6HwHU+xHywssXmr2jWJURJ8UwTQ
 Pd1uFBtVXz5NDzVevZkZ2rMhA/RSjPXNyyp0mNszYA5Ni5Qpk1YON2iAacJVQZHym1rQ
 hLvf6BfTzgktDyRWpTO9X1V6I72Vt5F9JMN9kY4dLAyr5xQLgiu/OGJ9frCfb+h8ABlw
 E57yfk0uWNm7uf74qcsN9E9X4rGcDl167vFSP7IliVlR5fAxDuZz2LugQLzkc80Ju2pU
 qpejEnQpNEArS8FbumWbWUxSdX+0TbB7fvozb43Cck/nl79gs7SXS1BdTVlWDJwjy9FY
 iDvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775221928; x=1775826728;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=i4r1mYXYMFAjYkAi3r/abuqzd7ILh9e8TERfZN7EjXg=;
 b=hKKx7m+bttGKHTocyhbqJRzZ0pUOA1tsutZk9c/8/pdjn37NUEtrGVUHcjY2j5IcQI
 1tI/2Yx0jzoaciMf8lFz1PEjk6ABJS/FDoVIDR6AebihaJxOwXe+sbErUNy84z3NGPCP
 ZJbJWtmB/xXt5YNDIuC/8nRNoW8lWzMBrfZ53xCxIT6DnQh1c7ljH7Nvxvbog18UzBCy
 par1bTfz4C9tJys7eHroyMAa0/rG/p4KvpinUC9XUpC1iH3I/LnvVdYnreSYt+bEd7x3
 qcIPieXwjIICVPllHt5vb6PmlkY9QRD/Hz5uyqgHRhBVC/wvie4YoM+ymQ/wav5HT5Ha
 Vbpw==
X-Forwarded-Encrypted: i=1;
 AJvYcCW/0P4Jdzsgc2x9qlY6VksQJpwCm1bp2zx6Fw0RWIUFbyuJeX1ChfBOf8q2ECPd7RSF09jkoQ4BIsRKLV7ia7xXW24=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzxVk6rag+tMh+d+ef8hUrlxJU+G0BxisDbWmzZwVauIeD3lkcF
 /RUaUFZrpMn554jDNLV7tASOBmmpJYyiZ5jeFckqVdqi7/hAyyKl0JfXqdo/496o6PQ=
X-Gm-Gg: ATEYQzzGh/lRVN1kVCODrrMky+IAVGmEapZDVWIUaRGNZ8VpU9+RjCFLknTC4SxHvM4
 WIOpVQFST/OrOGJAwHXpXsIcvJzSL/IO9auZRt+wBPP2XUhXnoe0yYe02bhEMOnxlPeKbdXRXLU
 wuMc/rfVQDTqBIL+nJbO/ou+6ZHuLeFsMN/7/LB/rkstMBEEWK+KmQyO6slKwD4ZpAvqd8qwBal
 gy85kxJ4aC1eAVujgDlr9mqPDPDUG3NEKJXjQ7Y8FTdKrR6b5q5aSDJx0ttJspsnk0azdpY6/aR
 dTxB02QiGN0uWeTvm8t1Ji+YZed5aTNfkjs4k4e9ep53FPGHujRZBNqJMFlxe87YBSxzFVHG2VE
 dbldpaqJ/SlcRLOLUJXoByYFNwcU1n7nk67IZTs7f7Qwvj9uMElStvloF6mGtQVUvFZWdpXRJAd
 ZoTrHspJgW+S5+AwrGFDiPyBPtxofyxU5lVT1nE/NpeLvdTi/HmajIo2BNZexMDNdVFpo+AfLRa
 tkwjtVRiMJRvkE=
X-Received: by 2002:a05:6830:630b:b0:7d9:ad99:9ff0 with SMTP id
 46e09a7af769-7dbb75c800dmr2010902a34.30.1775221927647; 
 Fri, 03 Apr 2026 06:12:07 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:67f7:eb47:a398:6ff2])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-7dba6f47012sm4298577a34.0.2026.04.03.06.12.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2026 06:12:07 -0700 (PDT)
Date: Fri, 3 Apr 2026 08:12:03 -0500
From: Corey Minyard <corey@minyard.net>
To: Jian Zhang <zhangjian.3032@bytedance.com>
Message-ID: <ac-8o46MmMzJJcS3@mail.minyard.net>
References: <20260403090603.3988423-1-zhangjian.3032@bytedance.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260403090603.3988423-1-zhangjian.3032@bytedance.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Apr 03, 2026 at 05:05:58PM +0800, Jian Zhang wrote:
 > The response timer can stay armed across device teardown. If it fires after
 > remove, the callback dereferences the SSIF context and the i [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.48 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1w8eJu-0005zm-CK
Subject: Re: [Openipmi-developer] [PATCH v2 1/5] ipmi: ssif_bmc: cancel
 response timer on remove
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
Cc: openipmi-developer@lists.sourceforge.net,
 Quan Nguyen <quan@os.amperecomputing.com>, linux-kernel@vger.kernel.org
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
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[openipmi-developer@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,minyard.net:s=google];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:zhangjian.3032@bytedance.com,m:openipmi-developer@lists.sourceforge.net,m:quan@os.amperecomputing.com,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[corey@minyard.net,openipmi-developer-bounces@lists.sourceforge.net];
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
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	TAGGED_RCPT(0.00)[openipmi-developer];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[minyard.net:replyto,lists.sourceforge.net:helo,lists.sourceforge.net:rdns,lists.sourceforge.net:dkim,mail.minyard.net:mid]
X-Rspamd-Queue-Id: 8EDB63945A1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Apr 03, 2026 at 05:05:58PM +0800, Jian Zhang wrote:
> The response timer can stay armed across device teardown. If it fires after
> remove, the callback dereferences the SSIF context and the i2c client after
> teardown has started.
> 
> Cancel the timer in remove so the callback cannot run after the device is
> unregistered.

Thanks for the updates on this.  I have the new version in my tree.  I
have one question on the kunit patch, I'll ask it there.

-corey

> 
> Signed-off-by: Jian Zhang <zhangjian.3032@bytedance.com>
> ---
> v2: use timer_delete_sync() to cancel the timer
> 
>  drivers/char/ipmi/ssif_bmc.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/char/ipmi/ssif_bmc.c b/drivers/char/ipmi/ssif_bmc.c
> index 7a52e3ea49ed..dc1d5bb4a460 100644
> --- a/drivers/char/ipmi/ssif_bmc.c
> +++ b/drivers/char/ipmi/ssif_bmc.c
> @@ -843,6 +843,7 @@ static void ssif_bmc_remove(struct i2c_client *client)
>  {
>  	struct ssif_bmc_ctx *ssif_bmc = i2c_get_clientdata(client);
>  
> +	timer_delete_sync(&ssif_bmc->response_timer);
>  	i2c_slave_unregister(client);
>  	misc_deregister(&ssif_bmc->miscdev);
>  }
> -- 
> 2.20.1


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
