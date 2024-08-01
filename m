Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C851B94519C
	for <lists+openipmi-developer@lfdr.de>; Thu,  1 Aug 2024 19:40:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1sZZmo-0000bC-GP;
	Thu, 01 Aug 2024 17:40:22 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1sZZmm-0000b0-Sf
 for openipmi-developer@lists.sourceforge.net;
 Thu, 01 Aug 2024 17:40:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:To:From:Date:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uLfWxURrVBdzXzSgqRidSlKOIO0VP8WRHLsYCvLj8WM=; b=FXvRTzql2JJ1oKyj2f/DRYBJYQ
 hU+5qPG4n0+67AEJ/OPa/nnioNjV1lMcANULVThdFGGWpyGUWHVEV06Fenr6gDZ94yIo57tGFME/c
 eruJaeKRZQUED2p+7t+wHYerZVaykZzuGwg3OgwEwXrJEjzC8IFG/GDO/X9wfxIRXr0Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:To:From:Date:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=uLfWxURrVBdzXzSgqRidSlKOIO0VP8WRHLsYCvLj8WM=; b=W
 93DrKkOknX/zqU3ArmyHaLwtusZXkLiQwGkK484jmo3MFCfzGiBNMe1gCNWmTGK3ld/JdRnyDD1+b
 B4u2mJNLTuAvqIE2xIqnDJJAgcgrrv38evZMYQGYd7EPzbcOCDY989642Wi5tTIOKkMSaPSVMHqkD
 L5DIqOrdQLnEzqyE=;
Received: from mail-pl1-f178.google.com ([209.85.214.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sZZmm-0001tp-6d for openipmi-developer@lists.sourceforge.net;
 Thu, 01 Aug 2024 17:40:20 +0000
Received: by mail-pl1-f178.google.com with SMTP id
 d9443c01a7336-1fc4fccdd78so54739195ad.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 01 Aug 2024 10:40:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1722534009; x=1723138809;
 darn=lists.sourceforge.net; 
 h=content-disposition:mime-version:reply-to:message-id:subject:to
 :from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=uLfWxURrVBdzXzSgqRidSlKOIO0VP8WRHLsYCvLj8WM=;
 b=QS4XZmGY3emfvP2wJ557oQkiGvxPsH4aMF9OtZzryJhD4g9ssnCFmEiPg0oycfHgZq
 pu/rt7nVwwYCzsbEx03UGr708uc1G35lq7gHO8LG0cvDL7lkJiMRxOut9zU/iALhKGL9
 2lT/D73txCrL7g5EB9epb+BcxLUa1Id5cb4RQFeWPcfskIaUCQlTZermOGud9um+ljmi
 1G0zF1qoQjE9Q9l7mlePSkSVg47o9ulkPRP1+w6zstaFIocY24XdKO6iAFnfz2D090lt
 buA9hDQH1KhT86PLpH5AAdzTPTfQdWFrE3QRyNW6ccM2Jz4lqYgt9ijqdhk7EsyGs2C1
 gyoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1722534009; x=1723138809;
 h=content-disposition:mime-version:reply-to:message-id:subject:to
 :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=uLfWxURrVBdzXzSgqRidSlKOIO0VP8WRHLsYCvLj8WM=;
 b=b5TFXhqz4HE/cIzVlnlPQ3kXSYVnaIbofW3PWTLGvQfWaunZAR0UtQnq/IKAyYmQpT
 loCszQ9/B0Ik5hC39anKllEAadFTnbr/UuEMl0/HiIOYnCBER5/toy1ztdn3AhMGqQ2P
 YzHxALxRKjAhcUNJgG42K4RBpNnSd/ALgWiu0EoyvXjrwZ0jCKIFjQYJg2xTtIFBnXoJ
 7BeOA3tJSfxyWQDiFItms3oa3ZY2xMIvlKv2KehJIvkbvE3E55ypucdoYvM/IboyRb6H
 EEMqmk0RXhX9U7RdgXA9m+gQf5Ybl5TNe0tp/5ArLXtGdFK24tzy7FnPsDGm495dUQI1
 zS4g==
X-Gm-Message-State: AOJu0Yz7na1mSkbpuaGGDjKq8opcgd/zF7zlLkO34uWcnUdCrI/Wzyq8
 vZG8Fve1Mw17b3rZNVKXPe2rZT15gJd64zJfTLitMQP+/7b57xu3kcL5/CZQJavMsmfUmuxP334
 d
X-Google-Smtp-Source: AGHT+IHNZcodV7767ItqpTKK0twgYMytXNNEpWWRJWqjmq9SpnrZQ9DAvl0OqSJwBjpr8PVFB9peBw==
X-Received: by 2002:a05:6820:1ac4:b0:5d5:a343:d135 with SMTP id
 006d021491bc7-5d655333068mr961099eaf.1.1722530476071; 
 Thu, 01 Aug 2024 09:41:16 -0700 (PDT)
Received: from mail.minyard.net ([2001:470:b8f6:1b:ec53:8290:86a1:aa7c])
 by smtp.gmail.com with ESMTPSA id
 006d021491bc7-5d76261b9absm19239eaf.44.2024.08.01.09.41.15
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Aug 2024 09:41:15 -0700 (PDT)
Date: Thu, 1 Aug 2024 11:41:14 -0500
From: Corey Minyard <corey@minyard.net>
To: OpenIPMI Developers <openipmi-developer@lists.sourceforge.net>
Message-ID: <Zqu6qmKgYZmiA6gu@mail.minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: One of the fixes in the cleanup in 2.0.35 broke RMCP+ in
 lanserv/ipmi_sim.
 Note that this does not affect the main library, just the simulator that
 I use for testing, but some people use ipmi_sim for other things, so this
 release is for those users. 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.178 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.178 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.178 listed in sa-accredit.habeas.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.178 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1sZZmm-0001tp-6d
Subject: [Openipmi-developer] OpenIPMI 2.0.36 released
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

One of the fixes in the cleanup in 2.0.35 broke RMCP+ in lanserv/ipmi_sim.

Note that this does not affect the main library, just the simulator that
I use for testing, but some people use ipmi_sim for other things, so
this release is for those users.

-corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
