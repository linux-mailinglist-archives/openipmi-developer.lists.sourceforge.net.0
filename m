Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A8EBF5EDC03
	for <lists+openipmi-developer@lfdr.de>; Wed, 28 Sep 2022 13:49:43 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1odVZL-0005Hd-CN;
	Wed, 28 Sep 2022 11:49:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1odVZ5-0005GG-G3
 for openipmi-developer@lists.sourceforge.net;
 Wed, 28 Sep 2022 11:49:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2srAmciJRW4DbJpF2K2D7dFGHAXs06AxwGm/ao2Hg0w=; b=TnKDUPxfVPcjtdr/etFIX7dHFe
 4worfu0Gdy8EuxIutTLj+kAWaJvM5K8fpYwFMx3eLTbDD1cBxdYQNHNZCRfdeagIXVAXEF3mS0k0y
 5oNJmc9qroWU9jlokzVd5MdKu9E/Fc0fZGdJVl5FuX/ooi5zAU0Ty3bFBPXVGjfsRkP0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2srAmciJRW4DbJpF2K2D7dFGHAXs06AxwGm/ao2Hg0w=; b=Y+2mXURli081EzFUla315O5M5y
 jwfxMYuAq/fy4FpV87CZ1AXJPtQrrHZFnrn8b29QWNrvgMNPgXoL8x96QhWryYplWxjkUNVEenEbe
 y49HwTOa34rgUA8XEywZcxnu8+j8ElUe94gTUPWa9MIp64GPM/Vn+7F91vr/CMqID7Gg=;
Received: from mail-qk1-f179.google.com ([209.85.222.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1odVYv-000174-Qg for openipmi-developer@lists.sourceforge.net;
 Wed, 28 Sep 2022 11:49:15 +0000
Received: by mail-qk1-f179.google.com with SMTP id d15so7650262qka.9
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 28 Sep 2022 04:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date;
 bh=2srAmciJRW4DbJpF2K2D7dFGHAXs06AxwGm/ao2Hg0w=;
 b=RPYve9GzkpRkoeCx+7mYsDRNkMXECZP85Q6IRe4zxPQvZy3gBBHJoj4SOLQTojZoRC
 WYzbTNKkDSoA7EwiHcPlEMIyDEVWWJ0x9xe4Y4hrg2E/C2Y7Q5/5w/vs/EFwr2oYFCNH
 vCRC+1vxUhczOn/M9+kKJW3lxEZQ1t86/akmg6260//j9qrSdxl4PcnUfCRsju+X2nHB
 QVU+AeadQUWwj/V8CcFJBZN/whvC0T4Mmqk6diCqan3sFm4UIEZ50fVQ51Se3SaSmj4+
 A3uCLG7mgP4wEEP8fDTu1ckvNGhUa3jrDSmJ6vOLw//FFh43WiCMu122jq3yVSKM807f
 75Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date;
 bh=2srAmciJRW4DbJpF2K2D7dFGHAXs06AxwGm/ao2Hg0w=;
 b=hZAG/yTlImN6Txd/ZWkQ7NM4fcNkg1RZKGIXwmeQOQqLhJKZZBpreHrJWIxsphUEFR
 nFiOggT3CBRoAUhIFMOzLJry7w29RrJCxvSC16Qj0yflxeBfmplYH4f3VbmVrxJJuAVU
 SDgGJ54HAje+ZgyP9GV2DJlsbK8QjUEf5Jeqa2vqLVXSV69JxZq8HhbmU+SpGqt8c9YO
 2/+YewPpu8OabUPmP/t48RQ+bBrFwMBRKT6zx5h4nG0u6b8/VUnljNKClCT7vNYiDKUW
 LggGtUrcvAWY7UNyes9COZQyKL7VXl0V6thJfcvrCBtGjEWjgcO1I86XOct5MDFii+ee
 gjMQ==
X-Gm-Message-State: ACrzQf3ElsefDHK1NqZfBFTo5bTybhDmg/bJ+uBOAOCk4uZm2ZSfgblU
 ffyl1xescyeHWDN+eEa5RQ==
X-Google-Smtp-Source: AMsMyM4+JkgKvHkdWYmczdiE6sx7WohAGM/fe9D5VwfYMDSdfu7IDfkAxYAN0O04QmBADZtEPJfYgQ==
X-Received: by 2002:a05:620a:2627:b0:6b9:1b05:7b9 with SMTP id
 z39-20020a05620a262700b006b91b0507b9mr21598909qko.776.1664365747824; 
 Wed, 28 Sep 2022 04:49:07 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 r22-20020ac87ef6000000b0035a691cec8esm2621242qtc.29.2022.09.28.04.49.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Sep 2022 04:49:07 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:698d:2a61:6233:2ee5])
 by serve.minyard.net (Postfix) with ESMTPSA id 2CDC11800BB;
 Wed, 28 Sep 2022 11:49:06 +0000 (UTC)
Date: Wed, 28 Sep 2022 06:49:04 -0500
From: Corey Minyard <minyard@acm.org>
To: Yuan Can <yuancan@huawei.com>
Message-ID: <YzQ0sI5HTc4Oezca@minyard.net>
References: <20220927133814.98929-1-yuancan@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220927133814.98929-1-yuancan@huawei.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Sep 27, 2022 at 01:38:14PM +0000, Yuan Can wrote:
 > After commit e86ee2d44b44("ipmi: Rework locking and shutdown for hot
 remove"), 
 > no one use struct watcher_entry, so remove it. Thanks, got it. 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.179 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.179 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1odVYv-000174-Qg
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Remove unused struct
 watcher_entry
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
Reply-To: minyard@acm.org
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Sep 27, 2022 at 01:38:14PM +0000, Yuan Can wrote:
> After commit e86ee2d44b44("ipmi: Rework locking and shutdown for hot remove"),
> no one use struct watcher_entry, so remove it.

Thanks, got it.

-corey

> 
> Signed-off-by: Yuan Can <yuancan@huawei.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index c8a3b208f923..49a1707693c9 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -736,12 +736,6 @@ static void intf_free(struct kref *ref)
>  	kfree(intf);
>  }
>  
> -struct watcher_entry {
> -	int              intf_num;
> -	struct ipmi_smi  *intf;
> -	struct list_head link;
> -};
> -
>  int ipmi_smi_watcher_register(struct ipmi_smi_watcher *watcher)
>  {
>  	struct ipmi_smi *intf;
> -- 
> 2.17.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
