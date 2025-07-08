Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 265C8AFD4AE
	for <lists+openipmi-developer@lfdr.de>; Tue,  8 Jul 2025 19:08:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=puCBeQ5VScd5QvvYBVXVTm2wq6/JlvxSnVSKBRDPs8s=; b=fYlcgEnz/iUHTCo092kS56nwqx
	rmbX81OuFCqHE0pZQXY/9LfcYevECwNibHTu+e7Gz4T9t8RLV6fXdU5Ml1JpgADLGXgHeGeHQKCwT
	4p5NNpgCmiQerMIdn5irTt8rK9Y2JkqqUmxuKrQrDswprr8Xe/I7ScDERBl10wRu5bo0=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1uZBnb-0003LP-HI;
	Tue, 08 Jul 2025 17:08:07 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <colin.i.king@gmail.com>) id 1uZA5k-0002vI-1J
 for openipmi-developer@lists.sourceforge.net;
 Tue, 08 Jul 2025 15:18:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XG40PwIoFv8ISVaQTzep6bW+GYjOoA/4fnGXyh9BwhY=; b=TV+D7buwyEjYcQffTyhUdWtWx+
 wB/WdgfOOt2pC7YKnFsZIxkxK7VoEf8LUrJhP/Z3jX++Ol/+31EZL9OShhEHqWXJzNiwr2A4xk0BT
 7A8sR1DxoXoukQHCQjzks7I5FYD4G3nT8rc5+RMoc7cSiW1cZLcyKlAYLEUaIzHQAFpU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=XG40PwIoFv8ISVaQTzep6bW+GYjOoA/4fnGXyh9BwhY=; b=E
 wAIgQEMsvb+yRvlCM6Bnhdor+1Nn741dnLpDObPSQH/I9IVz1p6xZ112VCRgjQ0fNhFDTfnAEvTcs
 f3KtXim4BVjizGRYf6UvRPL5tdVEuA3/UHhxnzKQV8h2EfoEIGarrVfNx18YOuyg28G3fw3Cu7qUq
 TKplLtGElSAa7L/w=;
Received: from mail-wm1-f47.google.com ([209.85.128.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uZA5j-0006rs-Mt for openipmi-developer@lists.sourceforge.net;
 Tue, 08 Jul 2025 15:18:43 +0000
Received: by mail-wm1-f47.google.com with SMTP id
 5b1f17b1804b1-453634d8609so31072035e9.3
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 08 Jul 2025 08:18:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1751987912; x=1752592712; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=XG40PwIoFv8ISVaQTzep6bW+GYjOoA/4fnGXyh9BwhY=;
 b=j2v30ddhrX7NVjgavptkWTUUwXbqJXBrGAwahBZypgHQbuq4Mk+n2oKuhom4HArcdy
 TcWoc5OlqZkP1qn0kfnElFMUGOxwV5an3YNTvzJqjRLyfYgms0AbJMpfAeSjwNT9uqwO
 3bu32YaGa3cyPJeh7qN+drRnPbyMnEpUaAn2T1aSwp7qtcBw/5RHt5ujNcecVix3JxKt
 2Qs4doyNrnXacAcDYGa7f8P9ovt3WqIHI+wGrRlDF2LyU2PPAj2Aw6xWKiZpR73GsnNL
 5EHBJG0g8T/P7MBhjpqCJM2v5qFH4xqVjBZ3rwvsRkNcMHQYV2FOAAags8eREuvVu0Kx
 Ye0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751987912; x=1752592712;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=XG40PwIoFv8ISVaQTzep6bW+GYjOoA/4fnGXyh9BwhY=;
 b=g/OJq1M+iPiJfDJB41NShhvjPq5byBshpd8NRU1U992m+zEY9G94bkRQmCRQEwzGdr
 JHsyjuF5zGw+dpvxA/Ok/ku+6lScGTHryuQmpHLQCpRAYS1+60OUM2gaGBZM4QTDC1it
 H7J3Y8GBv7SUJugNj62CJZOYlOrYe0c0wHPmBORtn1zNEWmwUy+2LLsjmhkCY2KwZi7i
 aQCMbKeQ1dkFo1Fg9hx96E5/szCIL+EGNx1F7Gb0M2Ah9cNFjZUhebdgKNZQ0DlTiSI3
 jKyuSYn4SUwXfJL/WaeRadHeIxIWAsCEJxSdmQXhSFBuhPaWUnJfTNka3dyshJrAZ4Ap
 2zWw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWXivsYEbP/PmrvIRvJeth/HdBiIyNPItgvhEcvXh3R8kXIQzGNh8XGpxzSQyg3M81pEqL8Lf8uwmgDar6SvcQLKH0=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwMX+5vJ6EoNse7S3kziTbEo9vM9RUD+PI7u6VSNmKxJYAGfI2F
 hcG8Rw2oG5RNZBdkQtCDlXCxcaBjy2gVS9ACiHEwcebu60Q3aBd8nkceHv/YvX9tu0U=
X-Gm-Gg: ASbGncu/nYVOr+9a8pY8RHJ9LFDQMr7SmtByAPwBCjP1/y/5Zqij7UvGix5VCflrAMH
 CFR4ak/cjBxuVxHjR+s9DBwBFFpnfaPD8o2mnWgE9YRTDRTQOc4y3WJEx5FIVU+fFeE555B9R4m
 COQBHohabqRNPozbR/l5p+74yC3YOT2Dp0Dw2d5L8l2X1GoKNE6jK8FifCcDiROprGmdTFVazSM
 qKgiquXFeQODFo/1NeBeqFDWOfx+U/W3Fp+LdddHTaSjdkVEvzH5RgiqdzcSNgpMhYAsNPqqYaA
 aUlW5UqI8ZyykQvn857njZL7OFRt5r4MHwIvVf+io9oYPsqLqf/+SG6rdumr
X-Google-Smtp-Source: AGHT+IF8ilJk7zPxekXBSDqLR+QOUxIH/3u9W9My3I94vG6RNZ79i/0IDC7psl8ApnEea4OcTdO/zw==
X-Received: by 2002:a05:6000:2707:b0:3b4:9b82:d43f with SMTP id
 ffacd0b85a97d-3b5dde4d89dmr2276946f8f.16.1751987911982; 
 Tue, 08 Jul 2025 08:18:31 -0700 (PDT)
Received: from localhost ([87.254.0.133]) by smtp.gmail.com with UTF8SMTPSA id
 5b1f17b1804b1-454cd4f398csm16328925e9.2.2025.07.08.08.18.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Jul 2025 08:18:31 -0700 (PDT)
From: Colin Ian King <colin.i.king@gmail.com>
To: Corey Minyard <corey@minyard.net>, openipmi-developer@lists.sourceforge.net
Date: Tue,  8 Jul 2025 16:18:05 +0100
Message-ID: <20250708151805.1893858-1-colin.i.king@gmail.com>
X-Mailer: git-send-email 2.50.0
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The variable 'type' is assigned the value SI_INVALID which
 is zero and later checks of 'type' is non-zero (which is always false). The
 variable is not referenced anywhere else, so it is redundant and [...] 
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
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [colin.i.king(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.47 listed in wl.mailspike.net]
X-Headers-End: 1uZA5j-0006rs-Mt
X-Mailman-Approved-At: Tue, 08 Jul 2025 17:08:06 +0000
Subject: [Openipmi-developer] [PATCH][next] char: ipmi: remove redundant
 variable 'type' and check
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

The variable 'type' is assigned the value SI_INVALID which is zero
and later checks of 'type' is non-zero (which is always false). The
variable is not referenced anywhere else, so it is redundant and
so is the check, so remove these.

Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
---
 drivers/char/ipmi/ipmi_si_intf.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
index bb42dfe1c6a8..8b5524069c15 100644
--- a/drivers/char/ipmi/ipmi_si_intf.c
+++ b/drivers/char/ipmi/ipmi_si_intf.c
@@ -2108,7 +2108,6 @@ static bool __init ipmi_smi_info_same(struct smi_info *e1, struct smi_info *e2)
 static int __init init_ipmi_si(void)
 {
 	struct smi_info *e, *e2;
-	enum ipmi_addr_src type = SI_INVALID;
 
 	if (initialized)
 		return 0;
@@ -2190,9 +2189,6 @@ static int __init init_ipmi_si(void)
 	initialized = true;
 	mutex_unlock(&smi_infos_lock);
 
-	if (type)
-		return 0;
-
 	mutex_lock(&smi_infos_lock);
 	if (unload_when_empty && list_empty(&smi_infos)) {
 		mutex_unlock(&smi_infos_lock);
-- 
2.50.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
