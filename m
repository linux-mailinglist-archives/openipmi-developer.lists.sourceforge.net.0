Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C268F2DE
	for <lists+openipmi-developer@lfdr.de>; Thu, 15 Aug 2019 20:10:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hyKCb-0006Wt-JT; Thu, 15 Aug 2019 18:10:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <groeck7@gmail.com>) id 1hyKCa-0006Wm-Nv
 for openipmi-developer@lists.sourceforge.net; Thu, 15 Aug 2019 18:10:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YGZciRmFKywos7phtHka3BMLOjJ5GD0teHhlJqhmVkk=; b=GHaBEOgv2PCp5hZxGqMaD2Z3/T
 Zk8BBTEGR60RW9os/3rUGxTzKGE8gzHrUDxUJR9QiQzRSi0uQikA8sM7EoKs0XifpsbWFveg8jw2f
 XFwCxgjM3JAgaCF3bXdUYPYrJw/Igoqq4MrImtSWe7lwAlWD1V8rqw8GmgLXlEw9QO/c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YGZciRmFKywos7phtHka3BMLOjJ5GD0teHhlJqhmVkk=; b=XFqIZwgtjn4UWIrJ/DRy0syE2M
 6p1ntNYFjCdLwAghNdUxgvlFvEzBbX+riC93TCWAisBVxHabGx0ury8QfZjwzu6yB0bmEa2LevkiJ
 g9N0nBboG4HXszjQWTJgOFFVnHmvHnAAjvbwWzC2fMeD8D8GxN3mMs0aY+a72agVP6iQ=;
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hyKCX-0056pv-RU
 for openipmi-developer@lists.sourceforge.net; Thu, 15 Aug 2019 18:10:20 +0000
Received: by mail-pg1-f195.google.com with SMTP id n9so1643367pgc.1
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 15 Aug 2019 11:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YGZciRmFKywos7phtHka3BMLOjJ5GD0teHhlJqhmVkk=;
 b=refM5sSMD7XaWN2cBYtXuBqQL++UFaQwWAlfDTzJPByqFlruWjmG6Yh089jW7TdpbD
 NrxNm0s2FZstcIYgXU/1OVsLWK+FGl/oYQP7+rTaMZkVBgGR23anbQo8oXgra9wTo9FE
 j2SPBqMOEPNcKZuxqfPe/Pg1VNQm0EO34QutZQTrQlKL2cYjCOVrLe8Oxo+zJZteOQlu
 B8hMLNBQEAo1UHIr3ABYn9iPuYxpRN+b0Z+J5xpbw/J0aCqSamjWusXlwPIWC+3YINI7
 nT835bJJdCLvSjcjCqTDzc+ntlidStA5Dl6+CgzdON8g1MYQ6qhhFDs0HvmQv88M+BJb
 dCaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=YGZciRmFKywos7phtHka3BMLOjJ5GD0teHhlJqhmVkk=;
 b=fkzwsc0PWvtO0DZzjgQfvob5sA5oiR9sHpSa/Dm/XJZ0r+6D1rPTDSwfLNjiE4eV/a
 1oP5ZeubVQv294qi1LO8LonMjuO2uhmo9uDWwdby0BrWnDzFVW7jKsUdwqYFd1jVd87T
 ZAkURt8WDc8O7MqeUhjwu88WAr734CiBiKJnjjnlORoHwLOxnce4hgXQTlOkb1QZ1BM6
 p61+qYBBPitdY6Ldr0OFwJ3WzXw2bPFWGCQ/7x1WFchdIOxFR6b+JSpVbrnFBQdrWQOC
 QR94UnLl6ERlghQ16GDWELx0N7LmclSBDF3SwqCw5WFliRcBnvoOisGptkDm6ZvRMK96
 O8FA==
X-Gm-Message-State: APjAAAXIfYCZ3DFK/54vKG93rMfJmhzq2CzqCOwBwZnb89CAqSwj2U3T
 OxeplEDEifpY46Xz4LPiMn8=
X-Google-Smtp-Source: APXvYqxIDdyy6by/HwcLogs24nzI99cv+AM8Nkc5yJYlPuae0cwXsF1pvVTorAHFvjBOwQbrOwQiZw==
X-Received: by 2002:a62:38d7:: with SMTP id f206mr6797850pfa.102.1565892612133; 
 Thu, 15 Aug 2019 11:10:12 -0700 (PDT)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id n98sm1927437pjc.26.2019.08.15.11.10.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 15 Aug 2019 11:10:11 -0700 (PDT)
Date: Thu, 15 Aug 2019 11:10:10 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Arnd Bergmann <arnd@arndb.de>
Message-ID: <20190815181010.GA28580@roeck-us.net>
References: <20190814204259.120942-1-arnd@arndb.de>
 <20190814205245.121691-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190814205245.121691-1-arnd@arndb.de>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (groeck7[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: roeck-us.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (groeck7[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.8 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1hyKCX-0056pv-RU
Subject: Re: [Openipmi-developer] [PATCH v5 06/18] compat_ioctl: move WDIOC
 handling into wdt drivers
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
Cc: linux-hwmon@vger.kernel.org, linux-rtc@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Jean Delvare <jdelvare@suse.com>, Anatolij Gustschin <agust@denx.de>,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Florian Fainelli <f.fainelli@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 viro@zeniv.linux.org.uk, linux-fsdevel@vger.kernel.org,
 openipmi-developer@lists.sourceforge.net,
 Wim Van Sebroeck <wim@linux-watchdog.org>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org, linux-watchdog@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Aug 14, 2019 at 10:49:18PM +0200, Arnd Bergmann wrote:
> All watchdog drivers implement the same set of ioctl commands, and
> fortunately all of them are compatible between 32-bit and 64-bit
> architectures.
> 
> Modern drivers always go through drivers/watchdog/wdt.c as an abstraction
> layer, but older ones implement their own file_operations on a character
> device for this.
> 
> Move the handling from fs/compat_ioctl.c into the individual drivers.
> 
> Note that most of the legacy drivers will never be used on 64-bit
> hardware, because they are for an old 32-bit SoC implementation, but
> doing them all at once is safer than trying to guess which ones do
> or do not need the compat_ioctl handling.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Guenter Roeck <linux@roeck-us.net>

This patch doesn't seem to have a useful base (or at least git says so).
It does not apply to mainline nor to my own watchdog-next branch.
I assume you plan to apply the entire series together. Please not
that there will be conflicts against watchdog-next when you do so.

Guenter


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
