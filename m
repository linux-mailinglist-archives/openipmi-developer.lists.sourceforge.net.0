Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D13911F3A83
	for <lists+openipmi-developer@lfdr.de>; Tue,  9 Jun 2020 14:18:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jidD3-0007KX-I0; Tue, 09 Jun 2020 12:18:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jidD2-0007KD-2B
 for openipmi-developer@lists.sourceforge.net; Tue, 09 Jun 2020 12:18:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=diyIqg/YdYbqBJPOkwtPueBHlI8972XoeD1BVsHLbSU=; b=Gi6GEsEcAYi7XYfgHpyAt2h43v
 QZYnajFCT/BcmIA5ISDmWy4WXL2mNB7tdTPyopmpvhEyo2z9ynRTV1Y2ZzeOptyPIbyjuzo3yfHt8
 2+nj4A+co26+JF9XzWlYHj1gsj1uM9Jy0XIvg2nyGECxZrC3XPoGfTx0yE4t+wgp5auM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=diyIqg/YdYbqBJPOkwtPueBHlI8972XoeD1BVsHLbSU=; b=hoEuaWL15GYLBBUfrizzuwGERk
 joVYYz6EcvvwCczI5wem7gMZOEXA7osqiyxbWFabRv+Wb/4Ht/cks1C5BeKVWKFbgtQVf3VPv0aqE
 v62uBPAr6yJLdHECe/8rd2Rz5zsNf41AWmWZaMb0e/EU7PHiNXyt70CiMxePPb2gYnf4=;
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jidCz-00HaUv-Hg
 for openipmi-developer@lists.sourceforge.net; Tue, 09 Jun 2020 12:18:28 +0000
Received: by mail-oi1-f196.google.com with SMTP id p70so18474684oic.12
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 09 Jun 2020 05:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=diyIqg/YdYbqBJPOkwtPueBHlI8972XoeD1BVsHLbSU=;
 b=l8nyKnMC7hhus1agO0lNbRDnFc9/loLYlG/KrH6hup+C+q4TFx3cxcds2pr/j8QDPM
 CcEIh15lt+pnPkTiwtOuriZ8bc/P0HHSX9cAK0DJ1BXrHjquME6C1+GbzJKgAzRoxbvU
 4iPOli1lKZBx5oUC8FPokD2znTrQOWld8GrdZBa3NMoh0RF/dEPpBoYEn8qItkJcoq8I
 KVdyPZcIbMx5J7hxzTMH3HYW54QNc3x3DVZZH4/+EkEDIeCGDO5io0V0S41ks0Jkn0lK
 iHNFmGDTE1uWLHm9EkXlP8CXXY7AgTFIP0Z8/k2mtAFm5u4CofQU+NM3Sgy4VfzlIFMo
 XnuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=diyIqg/YdYbqBJPOkwtPueBHlI8972XoeD1BVsHLbSU=;
 b=fQcG6BDdwXHbYJxQlg4koJSYkwSJ3BUpJmE2TbxOjMeFPsEcUCeLv3E62CYTYXGbP5
 MwXk4d05PLtFXPmxPoqBwjJ7muZ7B08KqpMgggXVR1muXO/cAqJaf67KtaC0olD6Vq3k
 ogkGZ21tSyvkwPnA3rINXDSPP9tbH8n516VoiwWowUXTgiA5YMqJ6udA4AvJn98V46CR
 /xI3EGvhmURrFyuOYcvFSWWOJgTlSw3Xsi6BvudvtEM7vbb+lrv1eNto8BI082QtAnst
 59+SlMczkOgkGcznCXLBxjQF9yWBP2zg9e4gZu6UJn4Z80UTjRrj2KHTj1h9eVaXQIyl
 DM1Q==
X-Gm-Message-State: AOAM532SCtkomPmntL3b7fGiVrUo4BhU+Z46tYU2Kz73SxKHBXepk3mP
 H2/MNfapiNXkPiup61r1rQ==
X-Google-Smtp-Source: ABdhPJyvR7IKu301M8N4TqZSYI6ZEFPj/D5Lldpot8l0vp+QUU17Eb/9LI6ff0nkiZqBVb/NrExfBQ==
X-Received: by 2002:a05:6808:b35:: with SMTP id
 t21mr3189220oij.86.1591705099437; 
 Tue, 09 Jun 2020 05:18:19 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id o4sm3130595oib.53.2020.06.09.05.18.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 05:18:18 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:fc6b:eb5f:1e23:4ea5])
 by serve.minyard.net (Postfix) with ESMTPSA id AA196180050;
 Tue,  9 Jun 2020 12:18:17 +0000 (UTC)
Date: Tue, 9 Jun 2020 07:18:16 -0500
From: Corey Minyard <minyard@acm.org>
To: wu000273@umn.edu
Message-ID: <20200609121816.GS2880@minyard.net>
References: <20200609060410.29700-1-wu000273@umn.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609060410.29700-1-wu000273@umn.edu>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1jidCz-00HaUv-Hg
Subject: Re: [Openipmi-developer] [PATCH] ipmi: code cleanup and prevent
 potential issue.
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, kjlu@umn.edu,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Jun 09, 2020 at 01:04:10AM -0500, wu000273@umn.edu wrote:
> From: Qiushi Wu <wu000273@umn.edu>
> 
> All the previous get/put operations against intf->refcount are
> inside the mutex. Thus, put the last kref_put() also inside mutex
> to make sure get/put functions execute in order and prevent the
> potential race condition.

No, this can result in a crash.  intf and intf->bmc_reg_mutex will
be freed by intf_free.  In fact, every call to kref_put() on intf
better be outside any mutex/lock in intf.  If you saw any, that
is a bug, please report that.  kref_get() is fine inside the
mutex.

Plus, this is not a race condition.  get/put is atomic.

-corey

> 
> Signed-off-by: Qiushi Wu <wu000273@umn.edu>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index e1b22fe0916c..d34343e34272 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -2583,10 +2583,11 @@ static int __bmc_get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc,
>  			*guid =  bmc->guid;
>  	}
>  
> +	kref_put(&intf->refcount, intf_free);
> +
>  	mutex_unlock(&bmc->dyn_mutex);
>  	mutex_unlock(&intf->bmc_reg_mutex);
>  
> -	kref_put(&intf->refcount, intf_free);
>  	return rv;
>  }
>  
> -- 
> 2.17.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
