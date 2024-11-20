Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3EF9D3244
	for <lists+openipmi-developer@lfdr.de>; Wed, 20 Nov 2024 03:40:28 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tDadb-0000T6-DJ;
	Wed, 20 Nov 2024 02:40:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1tDada-0000T0-A7
 for openipmi-developer@lists.sourceforge.net;
 Wed, 20 Nov 2024 02:40:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n3z610eh0qCJd2kaOZ7Lkn+Ilb4Xt4NLJTNRQhvjlOc=; b=VVSM4hOkZELC4vuKGpxCKbzSst
 FS/bg6Mqa9LINgVcRA4zEsrU9Kn12v4MvfU7jNt8DD6RE/Bluf4Kwe21mzqfFoMnV6g2XdUiuVv+3
 klFzt2N9oNcJizWtBv++17tp8xJYpXkkng5pfNMfm4nMD4RxWRG7UEtNBScZDuQGZp2k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=n3z610eh0qCJd2kaOZ7Lkn+Ilb4Xt4NLJTNRQhvjlOc=; b=FdI2P2Zu+ocgm/xGSLbolj8qY4
 nvczoGeEdYj5UYbmHqyt7Q7SJWfutrrbYXn/W+011A4FBDD22SVkKPzYozJXjOGQZRcM5rMeowecw
 H0Zj6WAkv+RaB3RLbJUxZGnmHbUqxO52aAT6dKKyNBlIjXAf6irb1twb175s3HDTR3H8=;
Received: from mail-il1-f180.google.com ([209.85.166.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tDadX-000407-Vy for openipmi-developer@lists.sourceforge.net;
 Wed, 20 Nov 2024 02:40:13 +0000
Received: by mail-il1-f180.google.com with SMTP id
 e9e14a558f8ab-3a7546ac6e6so13165475ab.2
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 19 Nov 2024 18:40:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1732070406; x=1732675206;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=n3z610eh0qCJd2kaOZ7Lkn+Ilb4Xt4NLJTNRQhvjlOc=;
 b=OWQv1reytFgd+H4cvt0y68ZA4AvZIpuN36hI5WH/lBVuMdrRf+nrmV+Ig3XrFj9EoM
 AeIuh+gwsdOTVyOcEH/cIZ2dXQ6HrR4JldWHxG32Q0jtzpa/cViYpLfDRpXeM8RjOpgn
 W1ArjXz9NumfwE2RilMX4IsrTuDPro8enT71nUDn4HM3TLqDZnXrSPTRXQTrnokOat4m
 bucXh4eZgQWJUdvxdQj3jj2IjXMgsMa4SZGKrnq1zgFAJKs9QAiqypOBltFJS5/ONbIv
 IeWBX1CjilS/Fdy3GpTqjelPvlo6LZ1XAMn9ku2KYp4HcXY2BvCmcIhNCSz5F+rKqBW1
 QKgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1732070406; x=1732675206;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=n3z610eh0qCJd2kaOZ7Lkn+Ilb4Xt4NLJTNRQhvjlOc=;
 b=DLyiCqK0nX0CsXvsC4mqpvn+rCnRfkCLwnOyh7XYM5K6xSB9AnJixcfyXrpl2In5NR
 6+LFxIC+9Z4fS4XvLEoDDt7PX2O00gev4sneKBzvRfyedaYkplx6kxqO4C2yIIrglS/u
 TsZ+CsejaXqNRbw3aVt6e3HAhsrMb6OAcmjByqCg2xC5wXrD7Z2AdAH99RwlFkLq6GOm
 M0G5M1+UQ5/VprrOl2Cwd4B025z+lK4SO8cMZSZObrxagG+4HF4l+iZj/+Mz7T/RaE4b
 wlJk9f/q4rsBUZolMnQD8QsLaHZ5lDKywnMLT3AB0hZmJa4/lv5+GL74bA9yhqu8lky/
 wqLg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWHXva0oI4UZTPQONv3rLqx8Gfi2Y7AyjAMJ+fnAV5IC9donrZLytFme3nPoLZpVu58d1vcmowlfVOEUd3YSCzrozU=@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yw2vnhIuOT5eP+880t6JWzWQNd03s3pZN4wLOmXSSWlfcSj25N3
 AIWXpVFv8Kh6fEFieUpw36Mm0pBZ7CMegwtqgAR0Ypas5+c+TXdV1241YOzUsfMh4sJF7HfdAP2
 Q2SBA5g==
X-Google-Smtp-Source: AGHT+IFfSumVh91w5x9msiZmygRxDbJS7v7w+BJEhWhfq2eMN5sfNcaNQ01peKn0p30SVbyVU7B39g==
X-Received: by 2002:a05:6871:613:b0:296:e4bb:80f5 with SMTP id
 586e51a60fabf-296e4bc1d99mr314446fac.36.1732069922013; 
 Tue, 19 Nov 2024 18:32:02 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:ec53:8290:86a1:aa7c])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-29651945ee6sm3977928fac.29.2024.11.19.18.31.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2024 18:32:00 -0800 (PST)
Date: Tue, 19 Nov 2024 20:31:56 -0600
From: Corey Minyard <corey@minyard.net>
To: Quan Nguyen <quan@os.amperecomputing.com>
Message-ID: <Zz1KHCLwpOdsCagr@mail.minyard.net>
References: <20241022-ssif-alert-gpios-v2-0-c7dd6dd17a7e@gmail.com>
 <20241022-ssif-alert-gpios-v2-2-c7dd6dd17a7e@gmail.com>
 <434333fb-5703-449e-83f2-46e85f34fd23@os.amperecomputing.com>
 <CAB9gMfphfY0H721G9qV8_3sm1d_RTnKkWbEOeqC-0ox9p4cfCQ@mail.gmail.com>
 <b2441bab-304b-4983-8780-43671e8add4b@os.amperecomputing.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b2441bab-304b-4983-8780-43671e8add4b@os.amperecomputing.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Nov 20, 2024 at 08:58:47AM +0700, Quan Nguyen wrote:
 > On 19/11/2024 18:30, Corey Minyard wrote: > > I just saw this. What makes
 you think alerts are not supported in ipmi_ssif? > > Yes, Corey [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.180 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.180 listed in bl.score.senderscore.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.180 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.180 listed in wl.mailspike.net]
X-Headers-End: 1tDadX-000407-Vy
Subject: Re: [Openipmi-developer] [PATCH v2 2/2] ipmi: ssif_bmc: add
 GPIO-based alert mechanism
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Corey Minyard <minyard@acm.org>, devicetree@vger.kernel.org,
 Cosmo Chou <chou.cosmo@gmail.com>, Potin Lai <potin.lai@quantatw.com>,
 linux-kernel@vger.kernel.org, Potin Lai <potin.lai.pt@gmail.com>,
 Patrick Williams <patrick@stwcx.xyz>, Cosmo Chou <cosmo.chou@quantatw.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Nov 20, 2024 at 08:58:47AM +0700, Quan Nguyen wrote:
> On 19/11/2024 18:30, Corey Minyard wrote:
> > I just saw this.  What makes you think alerts are not supported in ipmi_ssif?
> 
> Yes, Corey, I see alerts are supported in ipmi_ssif.
> 
> My apology about the unclear question, I was just curious about whether this
> gpio-based alerts mechanism is confirmed through test with current ipmi_ssif
> without any extra patches.

Ah.  The way this would work would be that the GPIO is run to an
interrupt on the host processor.  Generally all the alerting devices on
the SMBus will "or" into that interrupt somehow.

When the interrupt comes in, the host will issue a request to the SMBus
alert address and each device that has an alert pending will respond
with their address.  Because of the wire or of the SMBus, the lowest
address will win.

On Linux, the driver for that particular device will be told that an
alert came in if it has registered for that alert.

The GPIO is just an interrupt, so that should just work.  That's not the
hard part.  There has to be some device tree work on the host side to
map the interrupt to an SMBus alert for a specific bus.  (I think you
can do this with ACPI, too, but I'm not sure.)  And the device, of
course, must respond properly to the alert request.

So the GPIO is not something that's unusual.  If it generates an
interrupt (and all the other stuff is in place on the host side) it will
work.

-corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
