Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBA7C4B8D4
	for <lists+openipmi-developer@lfdr.de>; Tue, 11 Nov 2025 06:38:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:From:References:To:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Py1NiFrXsKkpdC6FEecNnln/RK7xTuzhlikbUlqjq1I=; b=jg58bmqRuq6WEjzVK55eWIXuRx
	zHpBLbx3TnUgurRnLF8r/2n+HWFyetyJZUa1a2GEqINfyJqrGTzDMajQfMqhjVjCSzRr1BOKNtbow
	IfZahaz9NNCPr6HrvgtIQZEKvOVfFho9bqI2e4ZU8UYsHpVCmir4Zj8MiOGxWB/nlatg=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vIh56-0006Ud-UM;
	Tue, 11 Nov 2025 05:38:16 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rdunlap@infradead.org>) id 1vIh54-0006UW-RZ
 for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Nov 2025 05:38:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=40/VsnXsFcSLiJgKtc8jxrHRh6TFqjSmtbILrCIHYBk=; b=LYHt0mpKFB8E6+DVpDyhc2b/El
 1iXSgFCvGTymtNT0tbVQHAekTKxquQcumlkguo/5TFxQewF7aWubVfefgIYmf3igXEBEjyfFa3l1w
 kqZ/vB2FcSaKewN+wGy0Hn5wKDe75gmWLof+2CCRDIdMhoonVZCGn0Daov6Q1CXfwHP8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=40/VsnXsFcSLiJgKtc8jxrHRh6TFqjSmtbILrCIHYBk=; b=Lhpp0ZUtyZs5lA7y9D1efKfTU0
 8lIuVEfReptObrHAroH6kAXYaNfLEodC+mJy/rW8NpXjawaKG9lAXYeKv5zHDIwyaZqAcG8kc6YLq
 HyKtNipmun3+mcBgcpcxh3Vr1Zflz9lw+NPt5qbJEMx0VCIxoY06ISFWkH+vLsmlzSF0=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vIh54-00067V-37 for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Nov 2025 05:38:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=40/VsnXsFcSLiJgKtc8jxrHRh6TFqjSmtbILrCIHYBk=; b=xiGFAE4BIGLIcVkDMDid+HwM6U
 8B5FP9TE0g5HTAHMGF+oTK3YwsiNIYWp0amW2u9KSxqvH93NFCm2ARzSXzDRVpAL5pkqTMJiEJJ+d
 bKU3qU/wDLNVlCylY/worARgJcdpN9zHNnCwsLjOgAXMKk6a0uoTACandDk7Qt2hHGBPHpWp03T4m
 +7h4OZEVpymlQjRQMPpNzZyg0r4Y33v49zXUZmRRyvaokGVlP2sUXTXoQB/hG5GrLyvcLLEpOoS64
 Tlzu6VzGNC/1LkYlwPSLIPdOE2Pcu2e2S3KZ0Mf8VFV7iZKk3GduI9AOFC1TdIIe5MssUfvXjm8Z0
 EBTNViXw==;
Received: from [50.53.43.113] (helo=[192.168.254.34])
 by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
 id 1vIg7l-00000006VqT-2A4X; Tue, 11 Nov 2025 04:36:57 +0000
Message-ID: <e1799bf2-e261-4f36-9e1b-de324be9dd0a@infradead.org>
Date: Mon, 10 Nov 2025 20:36:57 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Bagas Sanjaya <bagasdotme@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Documentation <linux-doc@vger.kernel.org>,
 openipmi-developer@lists.sourceforge.net
References: <20251105125449.45643-1-bagasdotme@gmail.com>
Content-Language: en-US
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <20251105125449.45643-1-bagasdotme@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 11/5/25 4:54 AM, Bagas Sanjaya wrote: > Steps for loading
 IPMB driver at boot time, written as enumerated > sublist, is indented instead
 on the same level as its parent list. > Indent them as appro [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1vIh54-00067V-37
Subject: Re: [Openipmi-developer] [PATCH] Documentation: ipmb: Indent boot
 time loading steps
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
Cc: Corey Minyard <corey@minyard.net>, Jonathan Corbet <corbet@lwn.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net



On 11/5/25 4:54 AM, Bagas Sanjaya wrote:
> Steps for loading IPMB driver at boot time, written as enumerated
> sublist, is indented instead on the same level as its parent list.
> Indent them as appropriate.
> 
> Signed-off-by: Bagas Sanjaya <bagasdotme@gmail.com>

LGTM. Thanks.

Acked-by: Randy Dunlap <rdunlap@infradead.org>
Tested-by: Randy Dunlap <rdunlap@infradead.org>

> ---
>  Documentation/driver-api/ipmb.rst | 48 +++++++++++++++----------------
>  1 file changed, 24 insertions(+), 24 deletions(-)
> 
> diff --git a/Documentation/driver-api/ipmb.rst b/Documentation/driver-api/ipmb.rst
> index 209c49e051163f..dd99d034272b7e 100644
> --- a/Documentation/driver-api/ipmb.rst
> +++ b/Documentation/driver-api/ipmb.rst
> @@ -48,35 +48,35 @@ CONFIG_IPMB_DEVICE_INTERFACE=y
>  
>  1) If you want the driver to be loaded at boot time:
>  
> -a) Add this entry to your ACPI table, under the appropriate SMBus::
> +   a) Add this entry to your ACPI table, under the appropriate SMBus::
>  
> -     Device (SMB0) // Example SMBus host controller
> -     {
> -     Name (_HID, "<Vendor-Specific HID>") // Vendor-Specific HID
> -     Name (_UID, 0) // Unique ID of particular host controller
> -     :
> -     :
> -       Device (IPMB)
> -       {
> -         Name (_HID, "IPMB0001") // IPMB device interface
> -         Name (_UID, 0) // Unique device identifier
> -       }
> -     }
> +        Device (SMB0) // Example SMBus host controller
> +        {
> +        Name (_HID, "<Vendor-Specific HID>") // Vendor-Specific HID
> +        Name (_UID, 0) // Unique ID of particular host controller
> +        :
> +        :
> +          Device (IPMB)
> +          {
> +            Name (_HID, "IPMB0001") // IPMB device interface
> +            Name (_UID, 0) // Unique device identifier
> +          }
> +        }
>  
> -b) Example for device tree::
> +   b) Example for device tree::
>  
> -     &i2c2 {
> -            status = "okay";
> +        &i2c2 {
> +               status = "okay";
>  
> -            ipmb@10 {
> -                    compatible = "ipmb-dev";
> -                    reg = <0x10>;
> -                    i2c-protocol;
> -            };
> -     };
> +               ipmb@10 {
> +                       compatible = "ipmb-dev";
> +                       reg = <0x10>;
> +                       i2c-protocol;
> +               };
> +        };
>  
> -If xmit of data to be done using raw i2c block vs smbus
> -then "i2c-protocol" needs to be defined as above.
> +   If xmit of data to be done using raw i2c block vs smbus
> +   then "i2c-protocol" needs to be defined as above.
>  
>  2) Manually from Linux::
>  
> 
> base-commit: 27600b51fbc8b9a4eba18c8d88d7edb146605f3f

-- 
~Randy


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
