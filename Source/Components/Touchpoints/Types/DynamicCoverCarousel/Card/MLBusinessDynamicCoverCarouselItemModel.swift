//
//  MLBusinessDynamicCoverCarouselItemModel.swift
//  MLBusinessComponents
//
//  Created by Flavio Andres Gomez on 03/11/2022.
//

import Foundation

public struct MLBusinessDynamicCoverCarouselItemModel: Codable {
    private let backgroundColor: String?
    private let imageHeader: String?
    private let topPlainImage: String?
    private let middlePlainImage: String?
    private let multimediaCover: MLBusinessLiveImagesModel?
    private let link: String?
    private let topContent: [MLBusinessDynamicCarouselBadgeModel]?
    private let mainDescriptionLeft: [MLBusinessMultipleDescriptionModel]?
    private let mainDescriptionRight: [MLBusinessMultipleDescriptionModel]?
    private let mainSecondaryDescription: [MLBusinessMultipleDescriptionModel]?
    private let footerContent: MLBusinessDynamicCoverCarouselFooterModel?
    private let footerSecondaryContent: [MLBusinessMultipleDescriptionModel]?
    private let tracking: MLBusinessItemModelTracking?
    
    public init(backgroundColor: String?,
                imageHeader: String?,
                topPlainImage: String?,
                middlePlainImage: String?,
                multimediaCover: MLBusinessLiveImagesModel? = nil,
                link: String?,
                topContent: [MLBusinessDynamicCarouselBadgeModel]?,
                mainDescriptionLeft: [MLBusinessMultipleDescriptionModel]?,
                mainDescriptionRight: [MLBusinessMultipleDescriptionModel]?,
                mainSecondaryDescription: [MLBusinessMultipleDescriptionModel]?,
                footerContent: MLBusinessDynamicCoverCarouselFooterModel?,
                footerSecondaryContent: [MLBusinessMultipleDescriptionModel]?,
                tracking: MLBusinessItemModelTracking?) {
        
        self.backgroundColor = backgroundColor
        self.imageHeader = imageHeader
        self.topPlainImage = topPlainImage
        self.middlePlainImage = middlePlainImage
        self.multimediaCover = multimediaCover
        self.link = link
        self.topContent = topContent
        self.mainSecondaryDescription = mainSecondaryDescription
        self.mainDescriptionLeft = mainDescriptionLeft
        self.mainDescriptionRight = mainDescriptionRight
        self.footerContent = footerContent
        self.footerSecondaryContent = footerSecondaryContent
        self.tracking = tracking
    }
    
    public func getBackgroundColor() -> String? {
        return backgroundColor
    }
    
    public func getImageHeader() -> String? {
        return imageHeader
    }
    
    public func getTopPlainImage() -> String? {
        return topPlainImage
    }
    
    public func getMiddlePlainImage() -> String? {
        return middlePlainImage
    }
    
    public func getCoverMultimedia() -> MLBusinessLiveImagesModel? {
        return multimediaCover
    }
    
    public func getLink() -> String? {
        return link
    }
    
    public func getTopContent() -> [MLBusinessDynamicCarouselBadgeModel]? {
        return topContent
    }
    
    public func getMainDescriptionLeft() -> [MLBusinessMultipleDescriptionModel]? {
        return mainDescriptionLeft
    }
    
    public func getMainDescriptionRight() -> [MLBusinessMultipleDescriptionModel]? {
        return mainDescriptionRight
    }
    
    public func getMainSecondaryDescription() -> [MLBusinessMultipleDescriptionModel]? {
        return mainSecondaryDescription
    }
    
    public func getFooterContent() -> MLBusinessDynamicCoverCarouselFooterModel? {
        return footerContent
    }
    
    public func getFooterSecondaryContent() -> [MLBusinessMultipleDescriptionModel]? {
        return footerSecondaryContent
    }
    
    public func getTrackingId() -> String? {
        return trackingId
    }
    
    public func getEventData() -> [String : Any]? {
        return eventData?.rawValue
    }
}

extension MLBusinessDynamicCoverCarouselItemModel: Trackable {
    var trackingId: String? {
        return tracking?.trackingId
    }
    
    var eventData: MLBusinessCodableDictionary? {
        return tracking?.eventData
    }
}
