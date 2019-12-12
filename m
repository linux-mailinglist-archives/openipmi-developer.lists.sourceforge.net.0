Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 44ACD11D299
	for <lists+openipmi-developer@lfdr.de>; Thu, 12 Dec 2019 17:45:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ifRad-0006LQ-VJ; Thu, 12 Dec 2019 16:45:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1ifRac-0006L8-GJ
 for openipmi-developer@lists.sourceforge.net; Thu, 12 Dec 2019 16:45:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HFwK/FD+n8CoWcqu5akTJj/32zrjzCLhbVdB8UG7uyw=; b=Ol1AV28pKV1eZ/k07U8f4enRud
 H1Wbp9I3i2ZptzQVLMK0u2dO4ifm/CUWRFQ24dTHJlT3J9CUDGkn5xT8FsWrhe/amoUeZL+WOceUS
 2e+f4aQ4wVsi4sxfBmE2zFXQDEwkj95bTKmzYHNfqW4uFMxsyHTyH2Dd9CoiJmbANc9c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:To:From:Date:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=HFwK/FD+n8CoWcqu5akTJj/32zrjzCLhbVdB8UG7uyw=; b=f
 lAJVTQHPkoqZroTg5h8t2W+NQFe7sQSgVW6wOIZLa3peGuOAwAZnZ/eAOlptghiXTAqaX8+7wHnOw
 lYIBPMvBdAZqYuIPEiiyc0TBQM94SNHtNFt/k4rMhO2npu1C8Q3TtsKmwbCyWMHTJe020Pj2LjSb8
 a1pq9pEXTvkq2iUg=;
Received: from mail-ot1-f53.google.com ([209.85.210.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1ifRaa-00CPji-PJ
 for openipmi-developer@lists.sourceforge.net; Thu, 12 Dec 2019 16:45:22 +0000
Received: by mail-ot1-f53.google.com with SMTP id 59so2597911otp.12
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 12 Dec 2019 08:45:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:subject:message-id:reply-to:mime-version
 :content-disposition:user-agent;
 bh=HFwK/FD+n8CoWcqu5akTJj/32zrjzCLhbVdB8UG7uyw=;
 b=t4aX7dhnW27XtrcI1riiQO0Oe8uPd/qqXS02+vyOa2jzO2YmyfqqGKviwt8ktRGOeL
 MdeZbNsv4yjcnKoxIbuGVEFSjlk76SNMJb1Kk3bvLs51J7C2kb1sMxlFici9dMbNOB7p
 bjVztjXOseQylzW13tD5+xlEkgURACXaFCLiZ2Bx2++C2RQYN6/Nx31Jj/dHXNOIJGXG
 Lz4twv3kwmcjRh107rTKTMo/7p1W5wtl6fFMLk2y7DxIoLdmkGjea5Fp/8DXkHZ1YE7o
 Z8aYRlyC5rj86Vo9LToFdoyoGNrHu1CDD+p4VUYMiFgWsjJ5PSnpgyvVimxhK/k2O1T1
 Jy7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:subject:message-id:reply-to
 :mime-version:content-disposition:user-agent;
 bh=HFwK/FD+n8CoWcqu5akTJj/32zrjzCLhbVdB8UG7uyw=;
 b=pv9R6J8Gcb8iAfpmMHXIIB+8+pRwLJg5aFCVMinP7U/shscXjVWH+DQWHF3oaSleXC
 8RZFMaS+3MY/xi1jtrlu4GhaQMj1wT9uFH0frx8EwHUMbvW6osmYFrZ9k+SPraSruilg
 RnF3uk/jvzfKkRj13UyWSpMzkqRAgJcXQoaxfumHAw1c/vAD0PaigdiZhKR6agTd1rYy
 JjNEffRutL5uGfCzE2M1BuI4VsHloPwNrrPgbLrKaR7CVJxA/V5PZd0MEWS86FdR5ybV
 oHbNBSL8dhEfRcqe6gcUMYYcsBJxHZ4wr8/tBOBSRoqFZn0Fq/s/smmdQMv08WCzcLR+
 KgzA==
X-Gm-Message-State: APjAAAXHSp57LlPsDljHu0Bdjj0IOoi3ihwGvbuqNf4iPfZfiejBQaz4
 xtHqj0d+ufpobJomq76ET5oz/f0=
X-Google-Smtp-Source: APXvYqz6NLWkIfv4JWQiEhweLjt2RHyskZt+MYTuUWDJJh9rtXZYl+MniQf7OQHq5/nYZhcSqXTCpw==
X-Received: by 2002:a9d:6251:: with SMTP id i17mr9280907otk.14.1576169114404; 
 Thu, 12 Dec 2019 08:45:14 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id h24sm2299907otn.29.2019.12.12.08.45.11
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 08:45:11 -0800 (PST)
Received: from minyard.net (unknown [192.168.27.180])
 by serve.minyard.net (Postfix) with ESMTPSA id AA491180059
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 12 Dec 2019 16:45:10 +0000 (UTC)
Date: Thu, 12 Dec 2019 10:45:09 -0600
From: Corey Minyard <minyard@acm.org>
To: OpenIPMI Developers <openipmi-developer@lists.sourceforge.net>
Message-ID: <20191212164509.GI2891@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.53 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.53 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1ifRaa-00CPji-PJ
Subject: [Openipmi-developer] OpenIPMI 2.0.28 released
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Mostly minor updates.

The ability for the IPMI BMC simulator to connect to a real IPMB bus on Linux was added by Asmaa Mnebhi. That's the only feature addition.

It's just been a while, and these updates should go out.

-corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
