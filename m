Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C288FC4AEA4
	for <lists+openipmi-developer@lfdr.de>; Tue, 11 Nov 2025 02:48:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3u4hLYtdnKx9rxf8741EUSAgRS8PvYNGPoJxdUxUrmM=; b=WRLEsK+ocMJAhERCpvl83rbpZo
	kdefPJF7LhsKCAb1pU8jf5HRiBZdXGuh07DDgdLuCbJJNhk43q09DL/uQZ7PWQuPeTQGfWGNpxc96
	PQHbFn+ADi+n3fi8vin7Kvmt+TtaLuC0gvGiluDGTiYXSxy6hu8Bf7+406kBO5uUPgAw=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1vIdUI-0001si-Dn;
	Tue, 11 Nov 2025 01:48:02 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1vIdUH-0001sU-CH
 for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Nov 2025 01:48:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=su1UwbZ4Pt+1NiFLASvdJqDu/6MFhpiYOP6WJzJr3rs=; b=bTmPc0pa/SNKnOtF2D71JQj7zg
 EI2GbtWvTwK6mrZ0HwGf4mDBGkmrqSPVvPR2GcXuJOuhP7t/AnxkRXi/uT7KOqkiBVFaIYjZe0qQq
 bwuwy/vqtWcivBVv4EzXlolELrzF5Zhs0xuuaoXKwuQA6dZdhzqAvmso+9L+7Lrd8zGE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=su1UwbZ4Pt+1NiFLASvdJqDu/6MFhpiYOP6WJzJr3rs=; b=Js1+45aZb2s5B9K3kTVn11zceD
 6UF6AgoLQeFlrPr8sZVwiIkUb0zd/5k8RrqJnZuHyB/S1KiZtdyM+Vm8zm53vAjkFKJzJ9wl+rMW+
 cGN3RdlK13xfl6o4Ioq13kwiiH77bEcpEHl73y7EbFx2vH2hkcdlguYuUJXNX8TyVEPY=;
Received: from mail-vk1-f194.google.com ([209.85.221.194])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vIdUG-0004v9-Rz for openipmi-developer@lists.sourceforge.net;
 Tue, 11 Nov 2025 01:48:01 +0000
Received: by mail-vk1-f194.google.com with SMTP id
 71dfb90a1353d-559836d04f6so2323945e0c.0
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 10 Nov 2025 17:48:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1762825675; x=1763430475;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=su1UwbZ4Pt+1NiFLASvdJqDu/6MFhpiYOP6WJzJr3rs=;
 b=xU/tjvqzNDjGjJZhTnibjZwj6P27glf4fkQXnKFhO8z3EZ33VFWq22xHa9z5iZG7r3
 3/6CwXVfeSIRvBt8HIbNKqNv7TnDlktqCEEJgRF2QHhlprUcacmnoo1TzVZMC7ujHyqm
 kvcOPunwZ4F/9GfcZ2+lbfBryq9T2LJOxBJH/92dWUw7amESbRbKsrKaQElaB2+i1i4Q
 SLByVBy/X99j7GRpRnKh+ztwyzibViQqkFIFVzqqrwagSmyHcXy42TeatC9LxvECcwhD
 AxkBAqcNR0Gp5KFKDEIWEBASlz8pj17uJWubzFJFs+OP4MGmmFgRzodf0uaWSEZkcFgq
 RTBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762825675; x=1763430475;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=su1UwbZ4Pt+1NiFLASvdJqDu/6MFhpiYOP6WJzJr3rs=;
 b=IddkBut551ywPeOmkjs2HkExEzYHfmhRH6jRS/SSr4Ofej8S2Zzzg2D+NrfaMxbzTE
 cQfEuQjAZRPBKuzPqdhGOwIvq0RDTj5wgNuaKYXYFlOHmEQYW3E7ZTENSr1abf9kE46X
 YiecOri064rg7dnXlCKjiYbzJbjlaGc3+XBoFZXGcbR/8IYyrPOtfNS9Nw+Nugj12HtW
 pVOeMO3PPbt2b30zvp9VwoABsDxokBk8OJQXDhjVKDwGdruanD5YrP8Pu+hbEcvN7HOm
 b7Vx/0HUeMlRGdfx4cdWQ3s3RQNLpQvr23IA9GmGLlmA0q8UF3J4cJGTcBuWy2UVOKqX
 +JJQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXyU1LggHYZenqdnPecXPWew4Wz/qKhfTL/sUvLBoU/s/9Zy20E1+lYM6hNis8tBptAl298iP61G6ZA0aKgAUlUnnQ=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yy5pfvM5dp6V30n/y7BiVrkUH2nDqTx50Sxrp+EeSDKvDuvHQZ/
 a+2FrieDRnDqgyZQJvFEEyBAc6xH4rXyKgMtybuP/H8w8vXtGdq7un0svpcqllRUsj4VcLswVGj
 3cg5jNVY=
X-Gm-Gg: ASbGncu4QRU0gkRmsOM7CqSq5nMJK60NT3JfaaqBkIpGtYJfi2v/jVxi/DVaPeoBSAg
 /CPgfRTJ0uhXK/jafhW3hJfE0+zDR1FzM4No9ee/tfVnoOgwnCbHUiCSaxmUCgVY2/Kj5MJpH+3
 dm+suiXDlWvOeB3Fy2FomDbiL1iKMxvTdxJO9baQWBh8ekchWYJs/mIK0cimH9PRIaxohOTXj7M
 edqrsz/wNgl4bMAyk/e4+/TFRjukUstQuPfEIPh0WF3tMJHaR0b8hQcbwJAfGlTJc00KjQeNKlg
 nqy9y6jQJJ8c0qJmAqziXujPN5Mx1iM5zZYgDJwAw8vu6xJMJfyNVXXX75gsroSjd5aeaqMtzrn
 AEE9XMOhDt2N3e/8bFC9tSbwtut3kMlDl68OMC4a4F/IiR2ANj6kWOBjN7SZVIPHSi5n1qdHh3g
 nbnWm7/MWPB79HQQ==
X-Google-Smtp-Source: AGHT+IE/jcIXzBpJuV8eEIsm7iQuqvWqvxk9u55a2Tz3m20gqxvO+0WNmYzTYKtJLoO18byZ0z0hSw==
X-Received: by 2002:a05:6808:4497:b0:450:10b:a533 with SMTP id
 5614622812f47-4502a36c9edmr4842796b6e.61.1762824316148; 
 Mon, 10 Nov 2025 17:25:16 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:b4e9:19a3:cdaf:7174])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-45002752ca9sm6359729b6e.14.2025.11.10.17.25.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Nov 2025 17:25:15 -0800 (PST)
Date: Mon, 10 Nov 2025 19:25:10 -0600
From: Corey Minyard <corey@minyard.net>
To: Bagas Sanjaya <bagasdotme@gmail.com>
Message-ID: <aRKQdoTzacYn4skG@mail.minyard.net>
References: <20251105125449.45643-1-bagasdotme@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251105125449.45643-1-bagasdotme@gmail.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Nov 05, 2025 at 07:54:49PM +0700,
 Bagas Sanjaya wrote:
 > Steps for loading IPMB driver at boot time, written as enumerated > sublist, 
 is indented instead on the same level as its parent list. [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.194 listed in wl.mailspike.net]
X-Headers-End: 1vIdUG-0004v9-Rz
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
Reply-To: corey@minyard.net
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 openipmi-developer@lists.sourceforge.net, Jonathan Corbet <corbet@lwn.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Documentation <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Nov 05, 2025 at 07:54:49PM +0700, Bagas Sanjaya wrote:
> Steps for loading IPMB driver at boot time, written as enumerated
> sublist, is indented instead on the same level as its parent list.
> Indent them as appropriate.

I'd like to get the review of the original author, now on the CC list.

-corey

> 
> Signed-off-by: Bagas Sanjaya <bagasdotme@gmail.com>
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
> -- 
> An old man doll... just what I always wanted! - Clara
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
