Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B84E2B1DFB4
	for <lists+openipmi-developer@lfdr.de>; Fri,  8 Aug 2025 01:07:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9oWaCIXyuwdne1OBu5SnDrFsEtiZL83E51f2QmgRZ78=; b=NXS+MmIp/tnXIFbokZGgCV0Z9k
	lbUuNR6IwavFYZxyDGr8UAg8c2QLvCl+fk3BlDQWdj5/RSKHFP+Ye/ScQSBpWLdf5t/tz1oZFocjc
	y6mWF82e0av502LbeJOSbjfFa65AyPxBRY3QniQWxlpWfTaxr/kBVXRJ5Ri3SyN5JRmo=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uk9hQ-0008Pv-QR;
	Thu, 07 Aug 2025 23:07:05 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1uk9hQ-0008Pl-0M
 for openipmi-developer@lists.sourceforge.net;
 Thu, 07 Aug 2025 23:07:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=75Yx08DWsWdAobw9dHH5zVWLwwU9BE9U1Hzf6cU/Nt8=; b=nSJze6ECPvbpqsQbAMNtRMrdRq
 yGlpS+cdVyDrOK2ddTp78zeKoOzlBNUBRoLoiOngaKsQLCF5iV9itKIx5fiAWhFcPXLgpmVDg1aWy
 9mVZuqg7yq8Aa84fmWy3PpGBKphp59M5xDTOXWmR1QJtGlbwiXZs4jwUG3H8RDYnmKuc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=75Yx08DWsWdAobw9dHH5zVWLwwU9BE9U1Hzf6cU/Nt8=; b=h
 me1Us4/UDtHuyby8No1ezk0HLPBTJXwhbbqQHAtrMfYj40723UYXH14GmLiOCu6vJCEnImHPIZEQp
 lcrIvIzw5A8jeB3Q5xGkR2KkY6M3q7uoy3L3DxXWengDaKKp8JFjO7zI15NwWfrss4M1Ij+LjvJOp
 Vm2chLYw9MAMjdgo=;
Received: from mail-ot1-f46.google.com ([209.85.210.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uk9hQ-000304-DL for openipmi-developer@lists.sourceforge.net;
 Thu, 07 Aug 2025 23:07:04 +0000
Received: by mail-ot1-f46.google.com with SMTP id
 46e09a7af769-74197e72d3dso1116481a34.3
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 07 Aug 2025 16:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1754608014; x=1755212814;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=75Yx08DWsWdAobw9dHH5zVWLwwU9BE9U1Hzf6cU/Nt8=;
 b=Ub7j4CZMGbO7aW/onIo6HgJW8Si7AYRoCgb68zuq4Ls8GsP3U4ZedU21eQl8k/okma
 vSQRSLQ8AXG7xbH5YIGhywg3LZhScfmA/adnbs6PFIcpgcDFHb3vx0lcmKJFQhugBafg
 UvIQKHdC2DQQRtXOaz1EBVxh6GbEvkfORHvQ2f57EePVF/ppe7v3V4JPta1wqZ8A+Tgc
 bc8yCrMRzh8abRsw0XdHMbQKV8Gmqis4rUMYp4GmmLEouEyfPJOBPFYNaaKb2xr1ZRyh
 OZlB1GEDtDOwHY3vsBgfvTle94t/TvaOt5sktbgEn6Xn3NSVXQjLAVzizdaPHXspVHj0
 0hYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754608014; x=1755212814;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=75Yx08DWsWdAobw9dHH5zVWLwwU9BE9U1Hzf6cU/Nt8=;
 b=mUa8C52obD5ltgKUTC0YtQMrm8TfTIzQt2tJB7vHNa0LuvhDsZK/bg9dqQQBx4kfH7
 bCPytj2xCJYPFQ8/hz5uvmo4nWB58iXyGlUuDyBFgbOu7JUnu+ST4GCXFY6AeJLZT2gS
 FTvFAg2ooy+spLsro+UFO6VJlWTeuLlivwcEAfhTi9n4TvuF22yjzchN96hlH2bmR4fn
 NcxODoNZcGLLVPtKpHNRaYYf711+yfOnoj3+RuCCDr+fmHJi+7KYC9uL9RG3z+wHO+pF
 kAePQJc1NVxxVJJzJMYDl79Z//oFxoxWcLqkOsDkFkuDF7UV3b5d6OrrTudsOQVtcQNi
 O1KA==
X-Gm-Message-State: AOJu0Yxd3R+JgQEqSQ8Wt/9FqdtzjfKaOrh2MSpA9FKjVPfqAk3cFenc
 CUNH+rCFkxgrGeHip9qSSVimJuS6ScgeiJvLDQCtm0JDubtFWT2/EWr3wCNklbxYgjcnsabH5cs
 /+jr2
X-Gm-Gg: ASbGncuvWD1Zu5rPF/ox0fkOstEsLVsY7CkcijEaXj0jPPvTZlo1EGGW3Tn5gWiUFia
 Yyl0RkISDE+ZI0yXtPtDBruht5Hfv6ohp/PSIFodaL0b39DWS4V3RTRkvMpRbSilipDbJWiNcGf
 FS8vhWIk2V0R5LKnA0N3yuzWYu9pIuZBzfcoqsqfEzWJxZqeJMvHXDDLqEY6mbR3e6Pqwtb2eJO
 a/MfInX3ssJ0TSDJnQBx8l322zmaQg5NzhfX2pZ0l9h6p03N4SUlLK3NJj5wKCW9NTh4DAImbIt
 6KmYJCzbCyBhs4Hx2is0z9ptVVCOjmnjZZug0M8ji/2/U+HhE/Pd7CbqPMmUhpLxv05bCzbkwTN
 7fVdG4lYiBdF9C7mj
X-Google-Smtp-Source: AGHT+IH57LnjubbD5UYK7L15NYiY7VlrhKFaIgo13Ia+wW70HiUgMFbemwc3ZpgTi1ORzEyJu7SgvA==
X-Received: by 2002:a05:6830:3c1:b0:741:9e2e:863e with SMTP id
 46e09a7af769-7432c86b6b0mr530342a34.13.1754608013676; 
 Thu, 07 Aug 2025 16:06:53 -0700 (PDT)
Received: from localhost ([2001:470:b8f6:1b:e698:accb:897b:ca29])
 by smtp.gmail.com with UTF8SMTPSA id
 46e09a7af769-7430a0ad042sm1386716a34.6.2025.08.07.16.06.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 Aug 2025 16:06:53 -0700 (PDT)
From: Corey Minyard <corey@minyard.net>
To: Frederick Lawler <fred@cloudflare.com>
Date: Thu,  7 Aug 2025 18:02:31 -0500
Message-ID: <20250807230648.1112569-1-corey@minyard.net>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  I went ahead and did some patches for this, since it was on
 my mind. With these, if a reset is sent to the BMC, the driver will disable
 messages to the BMC for a time, defaulting to 30 seconds. Don't modify message
 timing, since no messages are allowed, anyway. 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.46 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1uk9hQ-000304-DL
Subject: [Openipmi-developer] [RFC] Patches to disable messages during BMC
 reset
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 kernel-team@cloudflare.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

I went ahead and did some patches for this, since it was on my mind.

With these, if a reset is sent to the BMC, the driver will disable
messages to the BMC for a time, defaulting to 30 seconds.  Don't
modify message timing, since no messages are allowed, anyway.

If a firmware update command is sent to the BMC, then just reject
sysfs commands that query the BMC.  Modify message timing and
allow direct messages through the driver interface.

Hopefully this will work around the problem, and it's a good idea,
anyway.

-corey



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
