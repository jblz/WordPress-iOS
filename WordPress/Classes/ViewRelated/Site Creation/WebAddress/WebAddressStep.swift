
/// Site Creation. Third screen: Domains
final class WebAddressStep: WizardStep {
    private let creator: SiteCreator
    private let service: SiteAddressService

    private(set) lazy var content: UIViewController = {
        return WebAddressWizardContent(service: self.service, selection: didSelect)
    }()

    var delegate: WizardDelegate?

    init(creator: SiteCreator, service: SiteAddressService) {
        self.creator = creator
        self.service = service
    }

    private func didSelect(_ address: DomainSuggestion) {
        creator.address = address
//        // Will have to transit to the success step
//        delegate?.wizard(self, willNavigateTo: FinalStep.identifier)
    }
}
